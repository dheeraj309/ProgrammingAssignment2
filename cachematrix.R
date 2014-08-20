## An R function that would cache the Inverse of a Matrix- a Costly and time taking computation

## Write a function that creates a special matrix to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        i  <- NULL
        set  <- function(y){
                x <<- y
                i <<- NULL 
        }
        get  <- function() x
        setinverse  <- function(inverse) i  <<- inverse
        getinverse  <- function() i
        list(set= set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## A function which computes inverse of special matrix returend by above function.If the inverse has already 
##been calculated i.e. matrix has not changed then it retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
