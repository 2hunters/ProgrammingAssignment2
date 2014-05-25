##Create a function, makeCacheMatrix that holds the following 4 functions.
makeCacheMatrix <- function(x = matrix()) {
      sm <- NULL ##initialize sm(squarematrix) as NULL
      set <- function(y) {##set the value of the matrix to NULL
            x <<- y
            sm <<- NULL
      }
      get <- function() x ##get the value of matrix
      setsolve <- function(solve) sm <<- solve ##set the value of inverse matrix by function solve
      getsolve <- function() sm ##get the vaule of inverse matrix
      list(set = set, get = get,
           setsolve = setsolve,
           getsolve = getsolve)
}
cacheSolve <- function(x, ...) {
      sm <- x$getsolve()
      if(!is.null(sm)) { ##check matix to see if it's NULL(inverse matrix has been computed and cached)
            message("getting cached inverse matix")
            return(mm)
      }
      data <- x$get()
      sm <- solve(data, ...)##compute inverse matrix
      x$setsolve(sm)##cache computed inverse matrix and reset to NULL
      sm
}

