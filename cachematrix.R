## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
            # stores the cached value
        # initialize to NULL

inv <- NULL
            # create the matrix in the working environment
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
            # get the value of the matrix
    get <- function() x
            # invert the matrix and store in cache
    setinverse <- function(inverse) inv <<- inverse
            # get the inverted matrix from cache
    getinverse <- function() inv
            # return the created functions to the working environment
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     ## attempt to get the inverse of the matrix stored in cache
         inv <- x$getinverse()
            # return inverted matrix from cache if it exists
        # else create the matrix in working environment

    if(!is.null(inv)) {
        message("getting cached data.")
                        # display matrix in console
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
        ## Return a matrix that is the inverse of 'x'
}
