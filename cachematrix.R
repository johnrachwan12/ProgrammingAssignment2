## Put comments here that give an overall description of what your

## To Create an special matrix obj

makeCacheMatrix <- function(x = matrix()) {
         m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set      = set, 
       get      = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
##Calculate matrix inverse 
##if stored skip calculation

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("data is getting cached ")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setsolve(m)
  m
}
