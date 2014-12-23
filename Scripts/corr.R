corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  all_data <- complete(directory) # use complete function
  enough_data <- all_data[all_data$nobs > threshold,]
  vector_of_correlations = c() # initialize to zero length
  if(nrow(enough_data) > 0){
    for(i in enough_data$id){
      i2 <- sprintf("%03d.csv", i)
      file <- paste(directory, i2, sep="/")
      fdata <- read.csv(file)
      good <- complete.cases(fdata)
      if(length(good) > 0){
        thecor <- cor(fdata$sulfate, fdata$nitrate, use="pairwise.complete.obs")
        vector_of_correlations <- c(vector_of_correlations, thecor)
      }
    }
  }
  vector_of_correlations
}