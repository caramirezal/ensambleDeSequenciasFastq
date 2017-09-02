## Control de calidad y ensamble de sequencias fastq

## dependencias
library(Rqc)
library(knitr)

## control de calidad
dir <- "data/"
files <- list.files("data/")
path <- paste(dir,files,sep = "")
qa <- rqcQA(path,workers=1)

## porcentaje de lecturas con calidad mayor
## que el umbral de calidad
rqcReadQualityPlot(qa)

## porcentaje de GC por ciclos de amplificación
rqcCycleGCPlot(qa)

## porcentaje de quality calls por ciclo
## amplificación
rqcCycleQualityPlot(qa)





