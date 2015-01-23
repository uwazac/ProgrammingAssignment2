#create "m" in environment
rm(list = ls())
source("cachematrix.R")
x<-matrix(1:4, nrow=2, ncol=2)
xCM<-makeCacheMatrix(x)
xInverse<-solve(x)
xCM$setInverse(xInverse)
cacheSolve(xCM)



