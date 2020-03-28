## Put comments here that give an overall description of what your 
## functions do
Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than computer
it repeatedly (there are alse alternatives to matrix inversion that we will not discuss here). My assignment is to write a pair of 
functions that cache the inverse of a matrix.
## Write a short comment describing this function
makeCacheMatrix creats a specical "matrix" object that can cache its inverse. cacheSolve: this function computes the inverse of 
the special 'matrix"  returned by makeCacheMatrix above. If the inverse has already been calculated(and the matrix has not changed), 
then the cachesolve should retrieve the inverse from the cache. Computing the inverse of a square matrix can be done with the solve 
function in R. for example, if X is a square invertible matrix, then solve(X) returns its inverse.

The functions below create a special object that stores a matrix and caches its inverse. The function of makeCacheMatrix creates 
a special “matrix”. This matrix is a list containing a function and make the following performance:
set the value of the matrix
get the value of the matrix
set the value of the inverse
get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
i<- NULL
Set<-function(y){
         x<<- y
        i<<- NULL
}
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
  list(set = set,
       setinverse = setinverse,
       getinverse = getinverse)

## Write a short comment describing this function
The following function computes the inverse of the special matrix returned by makeCatheMatrix above. If the inverse has already been calculated
        (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. 
        
        
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
 }
data <- x$get()
i <- solve (data, ...)
x$setinverse (i)
i
}
