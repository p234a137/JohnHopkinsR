for(i in 1:10){
  print(i)
}

# functions
add2 <- function(x, y){
  x+y
}

above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x, n = 10){
  x[x>n]
}

columnmean <- function(y, removeNA = TRUE){
  nc = ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] = mean(y[,i], na.rm = removeNA)
  }
  means # the last expression in the function gets returned
}

# function that shows the formal arguments of a function
formals(columnmean)
args(columnmean)
args(lm) # arguments of a  linear model
args(paste) # use of the ... argument when set of arguments not known
args(cat) # similar

search() # environments


# Week 2
cube <- function(x, n) {
  x^3
}

cube(3)

# code with warning
x <- 1:10
if(x > 5) {
  x <- 0
}


f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

z<-10
f(3)

# if assignment
x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y


h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}
