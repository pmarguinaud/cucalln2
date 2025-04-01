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

./compile.gpu_nvhpc_d_ref/main_cucalln_mf.x \
  --case-in /scratch/work/marguina/cucalln2_d \
  --ngpblks 10 \
  --verbose --diff --method openaccsinglecolumn > stdeo.ref.txt 2>&1

exit

./compile.gpu_nvhpc_d/main_cucalln_mf.x \
  --case-in . \
  --verbose --diff --method openaccsinglecolumn > stdeo.new.txt 2>&1

vim -d stdeo.ref.txt stdeo.new.txt
