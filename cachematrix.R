## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#### the function takes a matrix (inversible)
#### then creates a null value as m
#### then declares 4 functions and assign to the values of list
#### 4 functions are:
#setting a vector
#getting this vector
#setting a mean
#getting a mean
makeCacheMatrix <- function(x = matrix()) {
   m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function

####First of all it gets the inverse if it is calculated
#### if not it gets null value set in makeCacheMatrix 
### if it is really null then it gets a matrix and solve it and assign this inverse to m

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  message("calculate an inverse matrix")
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

### check it
# mat<-matrix(1:4,2,2)
# x<-makeCacheMatrix(mat)
# cacheSolve(x)
# cacheSolve(x)

