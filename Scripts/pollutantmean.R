pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)

  all_data = c()
  for(i in id){
    i2 <- sprintf("%03d.csv", i)
    file <- paste(directory, i2, sep="/")
    fdata <- read.csv(file)
    my_data <- fdata[,pollutant]
    my_data <- my_data[!is.na(my_data)]
    all_data <- c(all_data,my_data)
  }
  mean(all_data)
}