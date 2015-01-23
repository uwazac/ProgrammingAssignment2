## A set of example scripts and explanations for executing the functions can be found below the function definitions.

## makeCacheMatris is a function defining a set of methods and variables that are made available in 
## the global environment.

makeCacheMatrix <- function (x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
get<- function() x
setInverse<- function(solve) m<<-solve
getInverse<- function() m
list(set=set, get=get, 
     setInverse=setInverse, 
     getInverse=getInverse)

}


## This function calculates the inverse of a matrix, or not, depending on whether the matrix has already been
## calculated and cached in memory. The function returns the inverse of a matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getInverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setInverse(m)
  m
}

###   This first script creates the variable "m" in environment and caches the value of the inverse of the 
###   matrix "x" in "m". It then uses cacheSolve to return the value of the inverse matrix "x". Please note, 
###   in the script below, you may need to change "directory" argument in the source(directory) commamd, 
###   depending on the location of cachematrix.R in your local directory.

# rm(list = ls())
# source("cachematrix.R")
# x<-matrix(1:4, nrow=2, ncol=2)
# xCM<-makeCacheMatrix(x)
# xInverse<-solve(x)
# xCM$setInverse(xInverse)
# cacheSolve(xCM)

###   This next script demonstrates an example where the inverse of matrix "x" has not already 
###   been cached using makeCacheMatrix.R. As a result, cacheSolve.R calculates and returns the inverse 
###   of "x" from scratch. Please note, in the script below, you may need to change "directory" argument 
###   in the source(directory) commamd, depending on the location of cachematrix.R in your local directory.

# rm(list = ls())
# source("cachematrix.R")
# x<-matrix(1:4, nrow=2, ncol=2)
# xCM<-makeCacheMatrix()
# xCM$set(x)
# cacheSolve(xCM)