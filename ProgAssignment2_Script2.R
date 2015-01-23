###   Use the script below to demonstrate an example where the inverse of matrix "x" has not already 
###   been cached using makeCacheMatrix.R. As a result, cacheSolve.R calculates and returns the inverse 
###   of "x" from scratch. Please note, in the script below, you may need to change "directory" argument 
###   in the source(directory) commamd, depending on the location of cachematrix.R in your local directory.


source("~/uwazac/ProgrammingAssignment2/cachematrix.R")
x<-matrix(1:4, nrow=2, ncol=2)
xCM<-makeCacheMatrix()
xCM$set(x)
cacheSolve(xCM)