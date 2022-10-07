#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_256
#SBATCH -p slims
#SBATCH -n 256
#SBATCH -t 0-02:30:00
#SBATCH --ntasks-per-node=16
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
#SBATCH -o bench_256.out
#SBATCH -e bench_256.err

ml purge
ml intel
ml impi
ml icc

srun ./bin/lmp_mpi -in in.poly-bench -l log.b256
