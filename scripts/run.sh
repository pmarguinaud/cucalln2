#!/bin/bash

export MODULEPATH=/ec/res4/hpcperm/sor/install/nvidia/hpc_sdk/modulefiles

module load nvhpc/25.3

ulimit -s unlimited

for method in openaccsinglecolumn openaccmanyblocks
do

./main_cucalln_mf.x \
  --case-in ../cucalln2_d_10 --verbose --stat \
  --method openaccsinglecolumn --ngpblks 100 --nproma 32 \
  > $method.txt 2>&1

done

