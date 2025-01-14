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

./compile.gpu_nvhpc_d/main_cucalln_mf.x \
  --case-out . \
  --ngpblks 3 \
  --case-in /scratch/work/marguina/tmp/arp.18277215/nominal/000001 \
  --verbose --diff --method openmp

