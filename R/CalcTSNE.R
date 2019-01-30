#'Calculates tSNE over 3 dimes
#'@param x An scell S4 object
#'@export CalcTSNE


CalcTSNE <- function(x){

 var.data <- t(x@data[x@var.genes,])

 tsne.out <- Rtsne(var.data, dim=3)
 x@tsne <- tsne.out$Y
 x

}



