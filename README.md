# Fastq sequences assembly

This repository provides scripts used to perform quality control and 
assembly of fastq Solexa sequences from Illumina platform.

## Introduction

The pipeline performs the following tasks:

* **Quality control**
* **Sequence filtering**
* **Sequence alignment**


## 0 Preparing data

To reproduce the pipeline presented here clone the github repository
by executing the following command on a linux shell.

```r
https://github.com/caramirezal/ensambleDeSequenciasFastq.git
cd ensambleDeSequenciasFastq
``` 

Then, copy the fastq data to process into the data directory. In this
case Illumina1.fq and Illumina2.fq.
 

## 0.1 Pipeline dependencies




## 1 Quality control 

perl FaQCs.pl -p ~/scripts/ensambleDeSequenciasFastq/data/Illumina1.fq ~/scripts/ensambleDeSequenciasFastq/data/Illumina2.fq -d ~/scripts/ensambleDeSequenciasFastq/figures/ -qc_only

https://www.ncbi.nlm.nih.gov/genome/genomes/26?
