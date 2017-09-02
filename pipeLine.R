## Control de calidad y ensamble de sequencias fastq

## dependencias
library(Rqc)
library(knitr)
library(ShortRead)


#############################################################################
## control de calidad
dir <- "data/fastq/"
files <- list.files(dir)
path <- paste(dir,files,sep = "")
#rqc <- rqc(path = dir,pattern = ".gz")
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


#############################################################################
## Filtrado de datos

