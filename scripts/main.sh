#!/bin/bash

ulimit -s unlimited
export DR_HOOK_NOT_MPI=1
export DR_HOOK=1
export DR_HOOK_OPT=prof
export DR_HOOK_IGNORE_SIGNALS=-1
export DR_HOOK_SILENT=1

export OMP_NUM_THREADS=4

set -x

perl -e '

use FileHandle;
use strict;

for my $method (qw (OPENMP OPENMPSINGLECOLUMN OPENACCSINGLECOLUMN))
  {
    system ("objcopy ./main_cucalln_mf.x /dev/null --dump-section .parallelmethod.$method=/dev/stdout > ./lparallelmethod.$method.txt");
    my $data = do { my $fh = "FileHandle"->new ("<./lparallelmethod.$method.txt"); local $/ = undef; <$fh> };
    $data =~ s/\0//goms;
    "FileHandle"->new (">./lparallelmethod.$method.txt")->print ($data);
  }

'


for method in OPENMP OPENACCSINGLECOLUMN
do

\rm -f lparallelmethod.txt
ln -s lparallelmethod.$method.txt lparallelmethod.txt

echo "==> $method <=="

./main_cucalln_mf.x \
  --case-in ../cucalln2_d_100 --stat

\mv drhook.prof.0 drhook.prof.0.$method

done

\rm -f lparallelmethod.txt
