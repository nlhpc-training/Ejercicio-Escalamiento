#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_002
#SBATCH -p slims
#SBATCH -n 2
#SBATCH -t 0-02:30:00
#SBATCH --ntasks-per-node=2
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
#SBATCH -o bench_002.out
#SBATCH -e bench_002.err

ml purge
ml intel
ml impi
ml icc

srun ./bin/lmp_mpi -in in.poly-bench -l log.b002
