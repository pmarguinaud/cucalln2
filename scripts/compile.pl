#!/usr/bin/perl -w

use local::lib;
use FileHandle;
use File::Copy;
use File::Basename;
use File::stat;
use File::Path;
use Data::Dumper;
use Getopt::Long;

use strict;

use FindBin qw ($Bin);
use lib '/home/gmap/mrpm/marguina/fxtran-acdc/canonic-layout-outline/lib';

use Fxtran::Bt;
use Fxtran::PATH;
use Fxtran::Compare;
use Fxtran::Pragma::OpenACC;
use Fxtran::Identifier;
use Fxtran::Print;


my %opts;

sub newer
{
  my ($f1, $f2)  = @_;
  die unless (-f $f1);
  return 1 unless (-f $f2);
  return stat ($f1)->mtime > stat ($f2)->mtime;
}

sub copyIfNewer
{
  my ($f1, $f2) = @_;

  if (&newer ($f1, $f2))
    {
      print "Copy $f1 to $f2\n"; 
      &copy ($f1, $f2); 
    }
}

sub saveToFile
{
  my ($x, $f) = @_;

  unless (-d (my $d = &dirname ($f)))
    {
      &mkpath ($d);
    }

  'FileHandle'->new (">$f")->print (&Fxtran::Canonic::indent ($x));
  'FileHandle'->new (">$f.xml")->print ($x->toString ());
}


sub removeSPP
{
  my $d = shift;

  use Fxtran::Construct;

  &Fxtran::Construct::apply ($d, '//named-E[string(.)="YDSPP_CONFIG%LSPP"]', &e ('.FALSE.'));

}

sub preProcessIfNewer
{
  use Fxtran::Inline;
  use Fxtran::Associate;
  use Fxtran;
  use Fxtran::Stack;
  use Fxtran::Loop;
  use Fxtran::ReDim;
  use Fxtran::DrHook;
  use Fxtran::Construct;
  use Fxtran::Dimension;
  use Fxtran::Call;
  use Fxtran::Subroutine;
  use Fxtran::Canonic;
  use Fxtran::DIR;
  use Fxtran::Style;

  &copyIfNewer (@_);

  my ($f1, $f2, %args) = @_;

  my @inlined = @{ $args{inlined} || [] };

  my $SUFFIX = '_OPENACC';
  my $suffix = lc ($SUFFIX);

 
  my $style = 'Fxtran::Style'->new (style => 'ECPHYS');

  $f2 =~ s/\.F90$/$suffix.F90/;

  if (&newer ($f1, $f2))
    {
      print "Preprocess $f1\n";

      my $d = &Fxtran::parse (location => $f1, fopts => [qw (-construct-tag -line-length 512 -canonic -no-include)]);
     
      &Fxtran::Canonic::makeCanonic ($d);

      my ($pu) = &F ('./object/file/program-unit', $d);

      for my $in (@inlined)
        {
          my $di = &Fxtran::parse (location => $in, fopts => [qw (-construct-tag -line-length 512 -canonic -no-include)]);
          &Fxtran::Canonic::makeCanonic ($di);
          &Fxtran::Inline::inlineExternalSubroutine ($pu, $di, style => $style);
        }

      &Fxtran::Call::addSuffix ($pu, suffix => $SUFFIX, match => sub { $_[0] !~ m/^(?:DR_HOOK|ABOR1)$/o });
      &Fxtran::Subroutine::addSuffix ($pu, $SUFFIX);

      &saveToFile ($d, "tmp/$f2");

      &Fxtran::DIR::removeDIR ($d);
      &saveToFile ($d, "tmp/removeDIR/$f2");

      &removeSPP ($d);
      &saveToFile ($d, "tmp/removeSPP/$f2");

      &Fxtran::Construct::apply ($d, '//named-E[string(.)="LMCAPEA"]', &e ('.FALSE.'));

      &Fxtran::Loop::removeNpromaLoops ($pu, style => $style);
      &saveToFile ($d, "tmp/removeJlonLoops/$f2");

      &Fxtran::ReDim::reDim ($d, style => $style);
      &saveToFile ($d, "tmp/reDim/$f2");

      'Fxtran::Pragma::OpenACC'->insertRoutineSeq ($pu);

      &Fxtran::Stack::addStack ($pu, stack84 => 1, style => $style);
      &saveToFile ($d, "tmp/addStack/$f2");

      &Fxtran::Print::useABOR1_ACC ($d);

      &Fxtran::DrHook::remove ($pu);
      &saveToFile ($d, "tmp/removeDrHook/$f2");

      &saveToFile ($d, $f2);

      &Fxtran::intfb ($f2);

    }

}

my @opts_f = qw (update compile compare compare-prompt inline);
my @opts_s = qw (arch);


&GetOptions
(
  map ({ ($_,     \$opts{$_}) } @opts_f),
  map ({ ("$_=s", \$opts{$_}) } @opts_s),
);

my @inlined = qw (cubasmcn.F90 cuentr.F90 cuadjtq.F90 cuadjtqs.F90);
my @compute = map { &basename ($_) } <compute/*.F90>;
my @support = map { &basename ($_) } <support/*>;

@inlined = () unless ($opts{inline});

&mkpath ("compile.$opts{arch}");

chdir ("compile.$opts{arch}");

if ($opts{update})
  {
    for my $f (@support)
      {
        &copyIfNewer ("../support/$f", $f);
      }
    
    for my $f (@inlined)
      {
        &preProcessIfNewer ("../compute/$f", $f);
      }

    for my $f (@compute)
      {
        next if (grep { $_ eq $f } @inlined);
        &preProcessIfNewer ("../compute/$f", $f, inlined => \@inlined);
      }

    &copy ("../Makefile.$opts{arch}", "Makefile.inc");

    system ("Makefile.PL") and die;
  }

if ($opts{compile})
  {
    local $ENV{ARCH} = $opts{arch};
    system ('make SRC=. -j4 main_cucalln_mf.x') and die;
  }

if ($opts{compare})
  {
    &Fxtran::Compare::compare ("../compare.$opts{arch}", "../compile.$opts{arch}", %opts);
  }



