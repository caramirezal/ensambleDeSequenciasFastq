# Fastq sequences assembly

This repository provides scripts used to perform quality control and 
assembly of fastq Solexa sequences from Illumina platform. The 
pipeline is implemented using the nextflow tool.

## Introduction

The pipeline performs the following tasks:

* **Quality control**
* **Sequence filtering**
* **Sequence alignment**

Here, we describe the files and directories in this reppository:

* pipeline - main pipeline script implemented using nextflow.
* pipeLie.R - R script containing optional data quality and filtering
routines.
* alignments - contain aligned sequences in fasta format.
* figures - contain figures shown here.
* filteredData - having filtered fastq data. 
* genomes - contain the reference fna genome (*Giardia lamblia*).
* indexes - having builded reference genome files to align sequences.
* qreports - quality control reports files.

## 0. Pipeline dependencies

In order to reproduce the pipeline presented here you must clone the github repository and go to the directory of the cloned repository by executing 
the following commands on a linux shell. 

```r
git clone https://github.com/caramirezal/ensambleDeSequenciasFastq.git
cd ensambleDeSequenciasFastq
``` 

From now on, it is assumed that the current directory is that of the
cloned repository. Additionally, the following tools must be previously installed. 

* ![nextflow](https://www.nextflow.io/) - type 
`curl -s https://get.nextflow.io | bash ` 
* ![FaQCs](https://github.com/LANL-Bioinformatics/FaQCs) - clone
in the current repository executing `git clone https://github.com/LANL-Bioinformatics/FaQCs.git`
* ![cutadapt](http://cutadapt.readthedocs.io/en/stable/index.html) -
see installation manual ![here](http://cutadapt.readthedocs.io/en/stable/installation.html).


## 0. Preparing data
 
The next step is to specify your local paths. You can do this
by openning the "pipeline" nextflow text file and change the path0,
path1, and path2 to the current directory, first, and second fastq
files paths, respectively. In my case the head of the pipeline file
is the following:

```r
path0 = "/home/carlos/scripts/ensambleDeSequenciasFastq/"
path1 = "/home/carlos/scripts/ensambleDeSequenciasFastq/data/Illumina1.fq.gz"
path2 = "/home/carlos/scripts/ensambleDeSequenciasFastq/data/Illumina2.fq.gz"
```

Once this is done the pipeline nextflow script can be executed by running

```r
./nextflow run pipeline
```

The pipeline the create perform the routines described in the following 
sections.


## 1. Quality control 

Control quality was evaluated by the analysis of quality scores in
fastq sequences. The next 
perl FaQCs.pl -p ~/scripts/ensambleDeSequenciasFastq/data/Illumina1.fq ~/scripts/ensambleDeSequenciasFastq/data/Illumina2.fq -d ~/scripts/ensambleDeSequenciasFastq/figures/ -qc_only


## Data filtering

In order to improve the quality of the data used for the assembly the following 
filter steps were perfomed: i) Illumina truSeq 3' adapters were removed 
from both pair-end reads, ii) reads with less than 36 nt, and iii) reads
having N values.



https://www.ncbi.nlm.nih.gov/genome/genomes/26?
