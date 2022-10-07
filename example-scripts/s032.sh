#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_032
#SBATCH -p slims
#SBATCH -n 32
#SBATCH -t 0-02:30:00
#SBATCH --ntasks-per-node=16
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
#SBATCH -o bench_032.out
#SBATCH -e bench_032.err

ml purge
ml intel
ml impi
ml icc

srun ../bin/lmp_mpi -in in.poly-bench -l log.b032
