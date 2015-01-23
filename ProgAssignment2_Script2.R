#No “m” in environment
rm(list = ls())
source("cachematrix.R")
x<-matrix(1:4, nrow=2, ncol=2)
xCM<-makeCacheMatrix()
xCM$set(x)
cacheSolve(xCM)