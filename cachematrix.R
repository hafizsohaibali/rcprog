## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  matrix  <- x
  
  setmatrix <- function(x) {
    matrix <<- x
    inverse <<- NULL
  }
  
  getmatrix <- function() {
    matrix
  }
  
  setinverse <- function(inv) {
    inverse <<- inv
  }
  
  getinverse <- function() {
    inverse
  }
  list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    print("s")
    return (inverse)
  }
  matrix <- x$getmatrix()
  inverse <- solve(matrix)
  x$setinverse(inverse)
  inverse
}

matrix <- rbind(c(4,7) , c(2,6)) 

mcmatrix <- makeCacheMatrix(matrix)

cacheSolve(mcmatrix)


