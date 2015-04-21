## Following function is help to store both matrix and inverse of 
## matrix in cache also calculate the inverse of matrix if inverse
## is not stored in cache, make cache matrix function is help to 
## store both matrix and the inverse of matrix on the other hand 
## cache solve function is help to calculate the inverse of matrix if 
## inverse is not calculated.


## Make cache matrix function stored the both matrix and inverse 
## values. 
## 1. get the matrix value 
## 2. set the matrix value
## 3. calculate inverse of the matrix and store in inverse object
## 4. get inverse value

makeCacheMatrix <- function(x = matrix()) {
  matrix <- x 
  inverse <- NULL
  
  ## Set new value in matrix object and assign inverse with "NULL".
  setMatrix <- function(x) {
    matrix <<- x    
    ## Assign NULL to inverse object because old value is no more valid.
    inverse <<- NULL
  }
  
  ## Calculate the inverse of matrix object and assign to inverse object.
  calculateInverse <- function() {
    inverse <<- solve(matrix) 
  }
  
  ## Returns the value of inverse object.
  getInverse <- function() {
    inverse
  }
  
  list(setMatrix=setMatrix, calculateInverse=calculateInverse, getInverse=getInverse)
}


## Return the inverse of matrix, cache solve takes make cache matrix object
## as an argument, this function calculates the inverse of matrix that is stored
## in make cache matrix object if inverse is not stored in cache otherwise 
## inverse value return from the cache.

cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  
  ## Check the value of inverse object, if object is null then we calculate the
  ## inverse of matrix
  if(is.null(inverse)) {
    message("calculate data.")
    x$calculateInverse()
  }
  ## Returns the value of inverse 
  x$getInverse()
}