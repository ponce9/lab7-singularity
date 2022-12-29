#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno28/lab7-singularity/blast
#SBATCH -J singularity
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END    #END/START/NONE
#SBATCH --mail-user=almudena.ponce@um.es

module load singularity

gzip -d ./zebrafish.1.protein.faa.gz

singularity exec blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot | blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt
