#!/usr/bin/perl -w

use strict;
use local::lib;
use FindBin qw ($Bin);
use lib "$Bin/../fxtran-acdc/lib";
use FileHandle;
use File::Copy;
use File::Basename;
use File::stat;
use File::Path;
use Data::Dumper;
use Bt;
use Fxtran;

my %ARGS;

sub getARGS
{
  my $name = shift;

  $name = lc ($name);

  unless ($ARGS{$name})
    {
      my $F90 = "$name.F90";

      my $d = &Fxtran::parse (location => $F90, fopts => [qw (-construct-tag -line-length 512 -canonic -no-include)]);

      my ($name) = &F ('.//subroutine-stmt/subroutine-N', $d, 1);
      my @args = &F ('.//subroutine-stmt//arg-N', $d, 1);

      $ARGS{lc ($name)} = \@args;
    }

  die $name unless ($ARGS{$name});

  return $ARGS{$name};
}

my @skip = qw (DR_HOOK ABOR1);
my %skip = map { ($_, 1) } @skip;

my @queue;

sub scan
{
  my $name = shift;

  print "ROUTINE = $name\n";

  my %scan = map { ($_, 1) } @_;
  
  my $d = &Fxtran::parse (location => "$name.F90", fopts => [qw (-construct-tag -line-length 512 -canonic -no-include)]);

  my @call = &F ('.//call-stmt', $d);
  
  for my $call (@call)
    {
      my ($name) = &F ('./procedure-designator', $call, 1);
      my @AARGS = &F ('.//arg', $call);
      $name = lc ($name);

      next if ($skip{uc ($name)});

      my @DARGS = @{ &getARGS ($name) };

      print "> $name\n";

#     die unless (scalar (@DARGS) == scalar (@AARGS));

      for my $i (0 .. $#DARGS)
        {
          next unless ($i < scalar (@AARGS));
          next unless (my ($N) = &F ('./named-E/N', $AARGS[$i], 1));
          next unless ($scan{$N});
          print $DARGS[$i], " = ", $N, "\n" if ($DARGS[$i] ne $N);
        }
      
      push @queue, $name;
    }

  print "\n" x 2;
}

my $NAME = shift;

my $ARGS = &getARGS ($NAME);

push @queue, $NAME;

while (my $name = shift (@queue))
  {
    &scan ($name, @$ARGS);
  }

