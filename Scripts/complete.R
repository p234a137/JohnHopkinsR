complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  nobs <- c()
  for(i in id){
    i2 <- sprintf("%03d.csv", i)
    file <- paste(directory, i2, sep="/")
    fdata <- read.csv(file)
    good <- complete.cases(fdata)
    # rely on TRUE being represented as 1 and FALSE as 0
    nobs <- c(nobs, sum(good))
  }
  df <- data.frame(id, nobs)
  df
 }