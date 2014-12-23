source("makevector.R")
source("cachemean.R")
v <- 1:100000
a <- makeVector(v)
cachemean(a) # first time calculates
cachemean(a) # second time should get from cache