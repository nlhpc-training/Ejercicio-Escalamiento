#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_008
#SBATCH -p slims
#SBATCH -n 8
#SBATCH -t 0-02:30:00
#SBATCH --ntasks-per-node=8
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
#SBATCH -o bench_008.out
#SBATCH -e bench_008.err

ml purge
ml intel
ml impi
ml icc

srun ../bin/lmp_mpi -in in.poly-bench -l log.b008
