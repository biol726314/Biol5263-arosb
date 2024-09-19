#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=res_concatenate_%J_stdout.txt
#SBATCH --error=res_concatenate_%J_stderr.txt
#SBATCH --job-name=research_mammiliicoccus
# 

bash /home/biol726314/Research/scripts/concatenate.sh