## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function is used to make an inverse matrix based on the cache data
makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
    set <- function(matrix) {
            m <<- matrix
            j <<- NULL
    }
    get <- function() {
           m
    }
    setInverse <- function(inverse) {
            j <<- inverse
    }
    getInverse <- function() {
            j
    }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Write a short comment describing this function
## This function checks for the cache data mean, if not available it 
## computes the mean of the inverse matrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }        
        data <- x$get()
        m <- solve(data) %*% data
        x$setInverse(m)
        m
}
