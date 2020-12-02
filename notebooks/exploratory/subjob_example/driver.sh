#!/bin/bash
#SBATCH --job-name=optimization_driver  # Job name
#SBATCH --ntasks=1 # Run on a single CPU
#SBATCH --cpus-per-task=1
#SBATCH --mem=4gb # Job memory request
#SBATCH --time=12:00:00 # Time limit hrs:min:sec
#SBATCH -p cpu_short


# Load all the packages you need
module purge
module load python/gcc/3.6.5
module load slurm/current

# run the python driver script
python driver.py
