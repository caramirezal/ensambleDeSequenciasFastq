


files <- list.files(path = "alignments/",pattern = "*.[[:digit:]].fa$")
paths <- paste("alignments/",files,sep = "")
paths

count <- NULL
for (i in paths) {
        countLines <- readLines(i)
        if (length(countLines)>0) {
                countLines <- sapply(countLines, function(x) nchar(x))
                countLines <- countLines[seq(2,length(countLines),by=2)]
                count <- c(count,countLines)
        }
}

png("figures/lengthReadsleft.png")
hist(count,breaks = 1000,col="steelblue",main = "Contigs length",
     xlab = "Number of nt",ylab = "Freq",cex.lab=1.1,font.lab=2)
rug(count,col = "red")
abline(v=114,col="green")
mtext(text = "media = 114",at=114,col = "green")
abline(v=284,col="blue")
mtext("95th Q = 284",at=284)
dev.off()
plot.new()


library(plotFun)
df <- data.frame("length"=count)
mhist(df)

hist(count[count>300])
