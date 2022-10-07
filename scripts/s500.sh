#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_500
#SBATCH -p slims
#SBATCH -n 500
#SBATCH -t 0-00:05:00
#SBATCH --ntasks-per-node=20
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
#SBATCH -o bench_500.out
#SBATCH -e bench_500.err

ml purge
ml intel
ml impi
ml icc

srun ./bin/lmp_mpi -in in.poly-bench -l log.b500
