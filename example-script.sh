#!/bin/bash
# ----------------SLURM Parameters----------------
#SBATCH -J bench_00X
#SBATCH -p slims
# Número de procesos a ejecutar
#SBATCH -n 1              
# Tiempo máximo de ejecución
#SBATCH -t 0-03:15:00
# Procesos agrupados por nodos
#SBATCH --ntasks-per-node=1
#SBATCH --mail-user=foo@example.com
#SBATCH --mail-type=FAIL
# Archivos de salida
#SBATCH -o bench_001.out
#SBATCH -e bench_001.err

ml purge
ml intel
ml impi
ml icc

srun ./bin/lmp_mpi -in in.poly-bench -l log.b001
