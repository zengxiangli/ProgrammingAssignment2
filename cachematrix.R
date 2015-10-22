## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    solve  <- NULL
    set <- function(y){
        x <<- y
        solve  <<- NULL
    }
    get <- function()   x
    
    setSolve <- function(sol) solve <<- sol
    getSolve <- function()    solve
    list(set = set, get = get,
            setSolve = setSolve,
            getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}
