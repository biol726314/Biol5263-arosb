#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=12
#SBATCH --mem 16G
#SBATCH --output=res_trimmomatic_%J_stdout.txt
#SBATCH --error=res_trimmomatic_%J_stderr.txt
#SBATCH --job-name=research_mammiliicoccus
# 

bash /home/biol726314/Research/scripts/trimmomatic.sh