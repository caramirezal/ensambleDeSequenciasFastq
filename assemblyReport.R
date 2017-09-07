
## Locating paths
files <- list.files(path = "alignments/",pattern = "*.[[:digit:]].fa$")
paths <- paste("alignments/",files,sep = "")


## determining the length of the sequences
count <- NULL
for (i in paths) {
        countLines <- readLines(i)
        if (length(countLines)>0) {
                countLines <- sapply(countLines, function(x) nchar(x))
                countLines <- countLines[seq(2,length(countLines),by=2)]
                count <- c(count,countLines)
        }
}

## Plotting the distribution of the lengths
png("figures/lengthReadsleft.png")
hist(count,breaks = 1000,col="steelblue",main = "Contigs length",
     xlab = "Number of nt",ylab = "Freq",cex.lab=1.1,font.lab=2)
rug(count,col = "red")
m <- mean(count)
q95 <- quantile(count,0.95)
abline(v=m,col="green")
mtext(text = "mean=223",at=223)
abline(v=q95,col="blue")
mtext("95Q=587",at=q95)
dev.off()
plot.new()



