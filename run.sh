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

NGPBLKS=500

# --case-out . \
# --case-in . \

./compile.gpu_nvhpc_d_ref/main_cucalln_mf.x \
  --ngpblks $NGPBLKS \
  --case-in /scratch/work/marguina/cucalln2_d \
  --verbose --stat --method openaccsinglecolumn > stdeo.ref.txt 2>&1


./compile.gpu_nvhpc_d/main_cucalln_mf.x \
  --ngpblks $NGPBLKS \
  --heapsize 1000 \
  --case-in /scratch/work/marguina/cucalln2_d \
  --verbose --stat --method openaccsinglecolumn > stdeo.new.txt 2>&1

 vim -d stdeo.ref.txt stdeo.new.txt
