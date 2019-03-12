<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix sets and gets value of matrix, and inverse of matrix, returning a list
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()
    x
  setinverse <- function(inverse)
    m <<- inverse
  getinverse <- function() m
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  message("get computed data")
  x$setinverse(m)
  m
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix sets and gets value of matrix, and inverse of matrix, returning a list
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()
    x
  setinverse <- function(inverse)
    m <<- inverse
  getinverse <- function() m
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  message("get computed data")
  x$setinverse(m)
  m
}
>>>>>>> 7aa7ca54d16f317742efaed57fc2bd19ed83d0c1
