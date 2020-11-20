#!/bin/bash -l
#SBATCH -J align
#SBATCH --mail-type=END,FAIL      # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=sonali.narang@nyulangone.org     # Where to send mail
#SBATCH --mem=24G
#SBATCH --time=48:00:00
#SBATCH -N 1
#SBATCH --output=bwa_%j.log   # Standard output and error log

cd /gpfs/home/sn1110/carrolllab/0719_diagnosed_relapsed/20200323_hic_12pairs/pipelines/hicseq-standard/__01a-align

./run
