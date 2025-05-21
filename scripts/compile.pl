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

use Fxtran::PATH;

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

sub preProcessIfNewer
{
  &copyIfNewer (@_);
}

my @opts_f = qw (update compile);
my @opts_s = qw (arch);


&GetOptions
(
  map ({ ($_,     \$opts{$_}) } @opts_f),
  map ({ ("$_=s", \$opts{$_}) } @opts_s),
);

my @compute = map { &basename ($_) } <compute/*.F90>;
my @support = map { &basename ($_) } <support/*>;

&mkpath ("compile.$opts{arch}");

chdir ("compile.$opts{arch}");

if ($opts{update})
  {
    for my $f (@support)
      {
        &copyIfNewer ("../support/$f", $f);
      }
    
    for my $f (@compute)
      {
        &preProcessIfNewer ("../compute/$f", $f);
      }

    &copy ("../Makefile.$opts{arch}", "Makefile.inc");

    system ("Makefile.PL") and die;
  }

if ($opts{compile})
  {
    local $ENV{ARCH} = $opts{arch};
    system ('make -j4') and die;

    for my $x (qw (OPENMP OPENMPSINGLECOLUMN OPENACCSINGLECOLUMN))
      {
        system ("objcopy ./main_cucalln_mf.x /dev/null --dump-section .parallelmethod.$x=/dev/stdout > ../lparallelmehod.$x.txt");
      }

    system ('cp ../lparallelmehod.OPENMP.txt ../lparallelmehod.txt');

  }

