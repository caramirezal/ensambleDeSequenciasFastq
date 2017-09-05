# Fastq sequences assembly

This repository provides scripts used to perform quality control and 
assembly of fastq Solexa sequences from Illumina platform. The 
pipeline is implemented using the nextflow tool.

## Introduction

The pipeline performs the following tasks:

* **Quality control**
* **Sequence filtering**
* **Sequence alignment**


## Pipeline dependencies

To reproduce the pipeline presented here clone the github repository,
go to the directory of the cloned repository by executing the following 
commands on a linux shell. 

```r
https://github.com/caramirezal/ensambleDeSequenciasFastq.git
cd ensambleDeSequenciasFastq
``` 

From now on it is assumed that the current directory is that of the
cloned repository.

Additionally, following tools must be previously installed. 

* (nextflow)[https://www.nextflow.io/] - type 
`curl -s https://get.nextflow.io | bash ` 
* (FaQCs)[https://github.com/LANL-Bioinformatics/FaQCs] - clone
in the current repository executing `git clone https://github.com/LANL-Bioinformatics/FaQCs.git`





## 0 Preparing data

Then, copy the fastq.gz data files to process into the data directory. 
In my case, the files are called Illumina1.fq.gz and Illumina2.fq.gz. 
Finally, open the 'pipeline' nextflow script file and change the path0 
to the current directory path (in my case /home/scripts/ensambleDeSequenciasFastq). 








## 1 Quality control 

perl FaQCs.pl -p ~/scripts/ensambleDeSequenciasFastq/data/Illumina1.fq ~/scripts/ensambleDeSequenciasFastq/data/Illumina2.fq -d ~/scripts/ensambleDeSequenciasFastq/figures/ -qc_only

https://www.ncbi.nlm.nih.gov/genome/genomes/26?
