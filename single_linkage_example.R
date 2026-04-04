## Example with single linkage

rm(list=ls())
# clear workspace

d<-matrix(c(0,9,3,6,11, 9,0,7,5,10, 3,7,0,9,2, 6,5,9,0,8,11,10,2,8,0), 
          nrow=5, ncol=5, byrow=TRUE)
dd <- as.dist(d)
as.matrix(d)
xs <- hclust(dd, method="single")

class(xs)

# pdf("../graphics/dendro_single.pdf",paper="special")
# pdf("../graphics/dendro_single2.pdf",paper="special")

plot(xs)

cutree(xs,h=5)
cutree(xs,k=2)
# the same

rect.hclust(xs, k = 2, border = "red")

# dev.off()

# pdf("../graphics/dendro_complete.pdf",paper="special")

xc <- hclust(dd, method="complete")
plot(xc)

xc <- hclust(dd, method="average")
plot(xc)

# dev.off()

# pdf("../graphics/dendro_average.pdf",paper="special")

xm <- hclust(dd, method="average")
plot(xm)