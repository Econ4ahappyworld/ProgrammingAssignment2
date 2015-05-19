## PROGRAMMING ASSIGNMENT 2

## Includes two functions which invert a given invertible matrix

##FUNCTION 1
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## FUNCTION 2
## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and 
## the matrix has not changed), then the cachesolve should retrieve the inverse 
## from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)                
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}

## TEST
## 

vector <- makeCacheMatrix(matrix(c(9,10,3,20,25,30,35,40,45,50,3,8,65,70,75,80), 
                            nrow=4, byrow=T))
vector

cacheSolve(vector)

## The above result should be the invesrse of the initial vector

cacheSolve(vector)
## The above result should be drawn from the cache and be the inverse of the 
## initial vector