## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    matrizinv <- NULL
    setmat <- function(y) {
        x <<- y
        matrizinv <<- NULL
    }
    getmat <- function() x
    setmatinv <- function(inv) matrizinv <<- inv
    getmatinv <- function() matrizinv
    list(setmat = setmat, getmat = getmat,
         setmatinv = setmatinv,
         getmatinv = getmatinv)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   
    
}
