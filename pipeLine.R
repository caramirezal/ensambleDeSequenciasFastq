## Control de calidad y ensamble de sequencias fastq

## dependencias
library(Rqc)
library(knitr)
library(ShortRead)


#############################################################################
## control de calidad

## ubicación de los archivos fastq
dir <- "data/fastq/"
files <- list.files(dir)
path <- paste(dir,files,sep = "")
#rqc <- rqc(path = dir,pattern = ".gz")

## reportes de calidad usando Rqc
qa <- rqcQA(path,workers=1)

## porcentaje de lecturas con calidad mayor
## que el umbral de calidad
png("figures/qualityAboveThreshold.png")
rqcReadQualityPlot(qa)
dev.off()

## porcentaje de GC por ciclos de amplificación
png("figures/gcPerCycle.png")
rqcCycleGCPlot(qa)
dev.off()

## porcentaje de quality calls por ciclo
## amplificación
png("figures/qcPerCycle.png")
rqcCycleQualityPlot(qa)
dev.off()

## quality control report using shortRead
#qc <- qa(path,type="fastq")
#browseURL(report(qc))
#qc


#############################################################################
## Filtrado de datos

## lectura de archivos fastq usando ShortRead
dir <- "data/fastq/"
files <- list.files(dir)
path <- paste(dir,files,sep = "")
fq <- lapply(path, function(x) readFastq(x))

cat("Lecturas fastq previo a filtros")
fq

## ejecución del filtrado de datos
## remoción de valores de calidad menores a 'N'
trimmed <- lapply(fq, function(x) x[nFilter()(x)])
## remoción de lecturas de menos de 36 nt
trimmed <- lapply(trimmed, function(x) x[width(x) >= 36])

cat("Lecturas fastq después de filtros")
trimmed

