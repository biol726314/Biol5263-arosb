#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=blast_create_%J_stdout.txt
#SBATCH --error=blast_create_%J_stderr.txt
#SBATCH --job-name=blast_create
#

bash /home/biol726314/Research/scripts/blast_create.sh