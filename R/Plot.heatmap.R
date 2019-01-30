#'Plot heatmap
#'@param x Input S4 object
#'@export heatmap.S4

heatmap.S4 <- function(x){

  hspc.zs <- t(apply(x@data[x@var.genes,],1, scale))
  library(pheatmap)
  pheatmap(hspc.zs)
}
