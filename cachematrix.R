#There are two functtions. The function 'makeCacheMatrix' would create the matrix object, and...
# the function 'cacheSolve' would computes inverse of the matrix that was created through 'makeCacheMatrix' function

#function 'makeCacheMatrix' - to create the matrix object

makeCacheMatrix <- function(x = matrix()) {
        matrixinverse <- NULL                                   #Initializes the inverse matrix 
        set <- function(y) {                                    #Sets value to the variable 'x'
                x <<- y
                matrixinverse <<- NULL
}
        get <- function() x                                     #Retreives value of the variable 'x'
        setsolve <- function(solve) matrixinverse <<- solve   
        getsolve <- function() matrixinverse                    #get value of the variable 'matrixinverse'
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}

#'cacheSolve' function computes the inverse of the matrix returned by 'makeCacheMatrix' function

cacheSolve <- function(x, ...) {
        matrixinverse <- x$getsolve()                           #retrieves value of matrix inverse, if already vailable
        if(!is.null(matrixinverse)) {                          #fetching the value of matrix inverse from cache
        return(inverse_matrix)
} else {
        data <- x$get()
        matrixinverse <- solve(data, ...)
        x$setsolve(inverse_matrix)
}
        matrixinverse
}
