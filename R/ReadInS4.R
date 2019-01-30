#'Read in file and transfer it to a S4 object
#'@param inp Input file
#'@export readInData

readInData <- function(inp){
  input.file <- read.delim(inp, row.names = 1, header=T, sep="\t")
  output <- new("scell", data=as.matrix(input.file))
  output
}
