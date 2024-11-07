#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=bc03_core_blast_%J_stdout.txt
#SBATCH --error=bc03_core_blast_%J_stderr.txt
#SBATCH --job-name=bc03_core_blast
# 

bash /home/biol726314/Research/scripts/bc03_core_blast.sh