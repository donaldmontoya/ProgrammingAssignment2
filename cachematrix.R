## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    # Variable para matriz invertida iniciada a NULL
    matrizinv <- NULL
    #Funcion para cambiar matriz
    setmat <- function(y) { 
        x <<- y
        matrizinv <<- NULL
    }
    # Funcion para obtener la matrix
    getmat <- function() x
    #Funcion para cambiar matriz invertida
    setmatinv <- function(inv) matrizinv <<- inv
    #Funcion para obtener la matriz invertida
    getmatinv <- function() matrizinv
    list(setmat = setmat, getmat = getmat,
         setmatinv = setmatinv,
         getmatinv = getmatinv)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    matrizinv <- x$getmatinv()
    if(!is.null(matrizinv)) {
        message("getting cached data")
        return(matrizinv)
    }
    
    data <- x$getmat()
    #Se verifica si se puede calcular la inversa de la matriz con la funcion det()
    if(det(data)==0){
        message("No se puede calcular la inversa de la matrix")
        return(data)
    }
    
    #Se obtiene la matriz invertida
    matrizinv <- solve(data)
    #Se cambia la matriz invertida
    x$setmatinv(matrizinv)
    matrizinv
    
}
