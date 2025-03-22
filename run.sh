#!/bin/bash
#SBATCH -N1
#SBATCH -p ndl
#SBATCH --time 00:10:00
#SBATCH --gres=gpu:4
#SBATCH --exclusive
#SBATCH --switches=3

set -x

ulimit -s unlimited
export OMP_STACK_SIZE=4G
export OMP_NUM_THREADS=8

cd $SLURM_SUBMIT_DIR

# --ngpblks 3 --verbose --diff --case-out . 
# --ngpblks 9000 --times 10 \
# --ngpblks 3 --verbose --diff --stat \

#/opt/softs/nvidia/hpc_sdk/Linux_x86_64/24.7/compilers/bin/nsys profile \

./compile.gpu_nvhpc_d/main_cucalln_mf.x \
  --case-in /scratch/work/marguina/tmp/arp.18277215/nominal/000001 \
  --ngpblks 9000 --stat \
  --method openaccsinglecolumn

