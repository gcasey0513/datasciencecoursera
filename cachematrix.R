#George Casey 10/26/2014 Programming Assignment 2

#Instructions from assignment:

# Matrix inversion is usually a costly computation and there may be some benefit
# to caching the inverse of a matrix rather than compute it repeatedly. The
# following two functions are used to cache the inverse of a matrix.
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL 
  }
  
  get <- function() x
  setinverse <- function(inverse) inverse <<- inverse
  getinverse <- function() inverse
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(invervese)) {
    message("getting cached data.") #display message if there is a value in inverse
    return(inverse)   #return cached value and exit the function without calculating
  }
  mydata <- x$get()
  inverse <- solve(mydata)
  x$setinverse(inverse)
  inverse  #return calculated value
}
