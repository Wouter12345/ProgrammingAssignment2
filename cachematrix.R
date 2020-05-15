## THese two functions are written for Week 3 assignement of Coursera Data Science: R Programming course

## The following function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
			inve <- NULL
            set <- function(matrix) {
                    x <<- matrix
                    inve <<- NULL
            }
            get <- function() {
				x
				}
            setinverse <- function(inverse) {
				inve <<- inverse
				}
			getinverse <- function() {
				inve
				}
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
}


## The following function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
		inve <- x$getinverse()
        if(!is.null(inve)) {
                message("getting cached data")
                return(inve)
        }
        data <- x$get()
        inve <- solve(data, ...)
        x$setinverse(inve)
        inve}
