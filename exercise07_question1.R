# Reads odd rows of dataframe used as argument
# Usage: oddRowReader(<VARIABLE_FOR_DATA_FRAME>)
# Example: oddRowReader(iris) , where iris is a global variable already containing a dataframe
oddRowReader <- function(dataframevariable) {
  oddrownumbers <- seq(1,nrow(dataframevariable),by=2)
  oddrows <- dataframevariable[oddrownumbers,]
  print(oddrows)
}