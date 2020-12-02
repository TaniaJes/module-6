#!/bin/bash -l
#SBATCH -J align
#SBATCH --mail-type=END,FAIL      # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=tania.gonzalez-robles@nyulangone.org     # Where to send mail
#SBATCH --mem=24G
#SBATCH --time=48:00:00
#SBATCH -N 1
#SBATCH --output=bwa_%j.log   # Standard output and error log

cd /gpfs/scratch/tgr248/bioinformatics/module-6/hic-bench/pipelines/hicseq-standard/__02b-filter-stats

./run