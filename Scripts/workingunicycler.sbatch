#!/bin/bash
#
#SBATCH --partition normal
#SBATCH --ntasks=7
#SBATCH --mem 16G
#SBATCH --output=workingunicyc_out_%J_stdout.txt
#SBATCH --error=workingunicyc_err_%J_stderr.txt
#SBATCH --job-name=ashley_unicyc
# 

bash /home/ashleyrosb/Scripts/workingunicycler.sh