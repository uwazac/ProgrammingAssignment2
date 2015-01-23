## Put comments here that give an overall description of what your
## functions do

## A function defining a set of methods and variables that are available in the global environment.

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
## calculated cached in memory. The function returns the inverse of a matrix.

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
