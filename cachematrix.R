## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix function creates a special matrix which
## sets the value of the matrix
## gets the value of the matrix
## sets the value to solve for the inverse matrix 
## caches the inverse value of the matrix
## solves for the inverse of the special matrix created in makeCacheMatrix


## Write a short comment describing this function
## create a special matrix object that can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
  }
  get<- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}



## Write a short comment describing this function
## function computs inverse of the special matrix created by the function makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix,...)
  x$setmatrix(m)
  m
}

