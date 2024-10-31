#!/bin/bash
#
#SBATCH --partition normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=unicyc_out_%J_stdout.txt
#SBATCH --error=unicyc_err_%J_stderr.txt
#SBATCH --job-name=ashley_unicyc
#

bash /home/ashleyrosb/Scripts/Unicycler.sh