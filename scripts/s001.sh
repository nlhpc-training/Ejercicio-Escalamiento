#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_001
#SBATCH -p slims
#SBATCH -n 1
#SBATCH -t 0-03:15:00
#SBATCH --ntasks-per-node=1
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
#SBATCH -o bench_001.out
#SBATCH -e bench_001.err

ml purge
ml intel
ml impi
ml icc

srun ./bin/lmp_mpi -in in.poly-bench -l log.b001
