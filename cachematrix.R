## This assignment's aim is to write a pair o functions that cache the inverse of a matrix,
## with the ssumption that the matrix is always invertible.

## The makeCacheMatrix function below createa a special matrix object that has the ability to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
q<-NULL
set<-function(y){
x<<-y
q<<-NULL
}
get<-function()x
setInverse <-function(inverse)q<<-inverse
getInverse<-function()q
list(set=set,get=get,
setInverse=setInverse,
getInverse=getInverse)
}


## The cacheSolve function below computes the special matrix's inverse retuned by the previous function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
q<-x$getInverse()
if(!is.null(j){
message("obtaining cached data")
return(q)
}
mat(<-x$get()
q<-solve(mat,...)
x$setInverse(q)
q
}
