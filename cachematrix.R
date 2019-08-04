## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    setMatrix <- function(y) {
        x <<- y
        m <<- NULL
    }
    getMatrix <- function() x
    setInverseMatirx <- function(inverseMatrix) m <<- inverseMatrix
    getInverseMatrix <- function() m
    list(setMatrix = setMatrix, getMatrix = getMatrix,
    setInverseMatirx= setInverseMatirx,
    getInverseMatrix = getInverseMatrix)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getInverseMatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$getMatrix()
    m <- solve(data, ...)
    x$setInverseMatirx(m)
    m
}
