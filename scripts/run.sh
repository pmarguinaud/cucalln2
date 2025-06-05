#!/bin/bash

export MODULEPATH=/ec/res4/hpcperm/sor/install/nvidia/hpc_sdk/modulefiles

module load nvhpc/25.3

ulimit -s unlimited

./main_cucalln_mf.x \
  --case-in ../cucalln2_d_100 --verbose --stat \
  --method singleblock --ngpblks 1 --nproma 10000

nsys profile -t cuda,openacc,nvtx  \
./main_cucalln_mf.x \
  --case-in ../cucalln2_d_100 --verbose --times 5 \
  --method singleblock --ngpblks 1 --nproma 10000

