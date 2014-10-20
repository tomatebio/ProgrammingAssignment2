## This functions calculate the inverse matrix and caching the return

## create a special matrix and cache the inverse

makeCacheMatrix <- function(x = matrix()) {

    inverse<-solve(x)

    list(x=x,inverse=inverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {        ## Return a matrix that is the inverse of 'x'
    temp<-x$inverse
    if(!is.null(temp)){
        message("getting cached data")
        return(temp)
    }
    x<<-makeCacheMatrix(x)
   return(cacheSolve(x))
}









