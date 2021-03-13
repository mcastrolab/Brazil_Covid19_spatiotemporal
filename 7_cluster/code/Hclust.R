library(ISLR)
library(dplyr)
library(ggfortify)
library(ggplot2)
library(gridExtra)
library(grid)
library(factoextra)

setwd("~/Desktop/BRAZIL_COVID/Science/Hierarchical-cluster")
data <- read.csv("hclust_input.csv")

data_stdized<- prcomp(data[,1:5], 
                                center = TRUE, scale = TRUE)
summary(data_stdized)

hc_data   <- hclust(dist(data[,1:5], 
                         method = "euclidean"),
                    method = "average")

fviz_nbclust(data[,1:5], hcut, method = "gap_stat", 
             k.max=20, maxSE=list(method="globalmax",SE.factor=100))

## Let's look at our dendrogram (the structure of the clustering), which looks like a tree.

plot(hc_data, 
     hang = -1, cex = 0.8, 
     labels = data[,6],
     yaxt="n", ylab=(""),  #hang=-1,
     lwd=1.5, xlab="", main="", sub="")

hc_3  <- cutree(hc_data, k = 6)
hc_data_result <- cbind.data.frame(data,as.factor(hc_3)) ## map this result on ArcMap
colnames(hc_data_result)[6]  <- "Cluster"
