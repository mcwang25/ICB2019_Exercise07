# function to return the number of observations for a given species in a .csv data set
# Usage: obsCounter("<data_file>","<species>")
# Example: obsCounter("iris.csv","setosa")
obsCounter <- function(xx,yy){
  dataset <- read.csv(file=xx)
  subset <- yy
  datasubset <- dataset[dataset$Species==subset,]
  print(paste0("Number of ", yy, " observations: ", nrow(datasubset)))
}

# function to return data for flowers with Sepal.Width greater than specified value in a .csv data set
# Usage: sepalSorter("<data_file",<minimumLength>)
# Example: sepalSorter("iris.csv",3.5) 
sepalSorter <- function(zz,aa){
  dataset <- read.csv(file=zz)
  assign("width", aa)
  argName <- deparse(substitute(width))
  varName <- paste0("sepalWidth",argName)
  assign(varName,dataset[dataset$Sepal.Width>width,],env=.GlobalEnv)
}

# function to make .csv file for a certain species data from a .csv data set
# Usage: csvMaker("<data_file>","<species>")
# Example: csvMaker("iris.csv","setosa")
csvMaker <- function(bb,cc){
  dataset <- read.csv(file=bb)
  subset <- cc
  csvName <- paste0(subset, ".csv")
  datasubset <- dataset[dataset$Species==subset,]
  write.csv(datasubset, file=csvName)
}

