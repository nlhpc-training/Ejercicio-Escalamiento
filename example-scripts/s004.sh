#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_004
#SBATCH -p slims
#SBATCH -n 4
#SBATCH -t 0-02:30:00
#SBATCH --ntasks-per-node=4
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
#SBATCH -o bench_004.out
#SBATCH -e bench_004.err

ml purge
ml intel
ml impi
ml icc

srun ../bin/lmp_mpi -in in.poly-bench -l log.b004
