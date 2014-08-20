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
        i  <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }    ## Returning a matrix that is inverse of x if already exists
        data  <- x$get()
        i  <- solve(data, ...)
        x$setinverse(i)      ##Setting the value of inverse
        i
}
