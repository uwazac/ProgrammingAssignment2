### This example script creates "m" in environment and caches the value of the inverse of the matrix "x" in "m". 
### It then uses cacheSolve to return the value of the inverse matrix "x". Please note, in the script below, 
### you may need to change "directory" argument in the source(directory) commamd, depending on the location of
### cachematrix.R in your local directory.

# rm(list = ls())
# source("cachematrix.R")
# x<-matrix(1:4, nrow=2, ncol=2)
# xCM<-makeCacheMatrix(x)
# xInverse<-solve(x)
# xCM$setInverse(xInverse)
# cacheSolve(xCM)