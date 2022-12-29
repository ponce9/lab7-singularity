#!/bin/bash

#Carga de los modulos necesarios
module load singularity
module load anaconda/2020.11

echo "Apartado A:"
echo
echo "En ibsen:"
hostname
echo
echo "En my-python.sif"
echo
singularity run my-python.sif hostname

echo "Apartado B:"
echo
echo "En ibsen:"
cat /etc/os-release
echo
echo "En my-python.sif"
echo
singularity run my-python.sif cat /etc/os-release

echo "Apartado C:"
echo
echo "En ibsen:"
pwd
echo
echo "En my-python.sif"
echo
singularity run my-python.sif pwd

echo "Apartado D:"
echo
echo "En ibsen:"
ls -l /home
echo
echo "En my-python.sif"
echo
singularity run my-python.sif ls -l /home

echo "Apartado E:"
echo
echo "En ibsen:"
python --version
echo
echo "En my-python.sif"
echo
singularity run my-python.sif python --version

echo "Apartado F:"
echo
echo "En ibsen:"
ipython $HOME/lab7-singularity/source/kmer-solution.ipynb
echo
echo "En my-python.sif"
echo
singularity run my-python.sif ipython /kmer-solution.ipynb

module unload anaconda/2020.11
module unload singularity
