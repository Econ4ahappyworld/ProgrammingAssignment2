setwd("C:/Users/twilson/Desktop/R/R_Crse/ProgrammingAssignment2")

source("cachematrix.R")

m <- matrix(c(9,10,3,20,25,30,35,40,45,50,3,8,65,70,75,80), nrow=4, byrow=T)

m

nm <- makeCacheMatrix(m)

cacheSolve(nm)

cacheSolve(nm)

im <- cacheSolve(nm)

om <- makeCacheMatrix(im)

cacheSolve(om)

cacheSolve(om)




