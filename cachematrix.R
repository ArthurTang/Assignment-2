
#############
#This is the second assignment for the R course 


## The following is a pair of functions that cache the inverse of a matrix.


## Function #1
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        #The function will do the following:
        #set the value of the vector
        #get the value of the vector
        #set the value of the inverse
        #get the value of the inverse
        
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        
        # making a list containing all the values
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}

## Function #2
## The following function calculates the mean of the special "vector" created with the above function.

cacheSolve <- function(x, ...) {
        
        m <- x$getinverse()
        if(!is.na(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        ## Return a matrix that is the inverse of 'x'
        m
       
}
