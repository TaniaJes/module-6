#!/bin/bash
#SBATCH --job-name=optimizer  # Job name
#SBATCH --array 1-4
#SBATCH --ntasks=1 # Run on a single CPU
#SBATCH --cpus-per-task=1
#SBATCH --mem=4gb # Job memory request
#SBATCH --time=12:00:00 # Time limit hrs:min:sec
#SBATCH -p cpu_short

PARAM_ID=$1

python optimize.py "${PARAM_ID}"
