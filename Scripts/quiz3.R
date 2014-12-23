library(datasets)
data(iris)
?iris

# mean(iris$Sepal.Length)
apply(iris[, 1:4], 2, mean)
with(iris, tapply(Sepal.Length, Species, mean))

library(datasets)
data(mtcars)
with(mtcars, tapply(mpg, cyl, mean))
# or equivalent
tapply(mtcars$mpg, mtcars$cyl, mean)
with(mtcars, tapply(hp, cyl, mean))

