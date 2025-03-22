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

./compile.cpu_intel_s/main_cucalln_mf.x \
  --ngpblks 6000 \
  --case-in /scratch/work/marguina/cucalln2_s \
  --verbose --stat --method openmp

./compile.gpu_nvhpc_s/main_cucalln_mf.x \
  --ngpblks 6000 \
  --case-in /scratch/work/marguina/cucalln2_s \
  --verbose --stat --method openaccsinglecolumn

./compile.cpu_intel_d/main_cucalln_mf.x \
  --ngpblks 6000 \
  --case-in /scratch/work/marguina/cucalln2_d \
  --verbose --stat --method openmp

./compile.gpu_nvhpc_d/main_cucalln_mf.x \
  --ngpblks 6000 \
  --case-in /scratch/work/marguina/cucalln2_d \
  --verbose --stat --method openaccsinglecolumn

