@@ -1,15 +1,43 @@
## To avoid costly computation when inverting matrices,
## these functions calculates and stores matrix inversions
## and collects earlier cached inversions if available.

## makeCacheMatrix is a function that:
## 1. sets the value of the matrix
## 2. gets the value of the matrix
## 3. sets the value of the inverted matrix
## 4. gets the value of the inverted matrix

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## cacheSolve is a funtion that:
## 1. checks if the inversion of the matrix of interest 
## has already been calculated. If so, the cached data
## is returned.
## 2. calculates the matrix inversion if no cached data 
## is available. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i}
