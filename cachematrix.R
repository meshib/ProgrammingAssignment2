## Functions are used to define new functions

## The makeCacheMatrix function creates any empty matrix, 'x', and a null matrix, 'm', in which we will store the inverse of 'x'.
## It gives you the option to set a value to 'x'. It contains functions to "get" 'x', set the inverse of 'x' to 'm', and "get" 'm'.
## These 4 items are then all stored and returned in a list.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() {
    x
  }
  setInv <- function(inv) {
    m <<- inv
  }
  getInv <- function() {
    m
  }
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}

## The cacheSolve functions first determines whether or not 'm' is null. 
## If it is, it calculates and prints the inverse of the given matrix. If not, it simply returns 'm'.

cacheSolve <- function(l) {
    ## Return a matrix that is the inverse of 'l'
  m <- l$getInv()
  if(!is.null(m)) {
    return(m)
  }
  data <- l$get()
  m <- solve(data)
  l$setInv(m)
  m
}