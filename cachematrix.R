## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

inverse<-NULL
set<-function(y){
x<<-y
inverse<<-NULL}
get<-function() x
setinverse<-function(z) inverse<<-z
getinverse<-function() inverse
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(m, ...) {
        inv<-m$getinverse()
       if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
                }
                data<-m$get()
                inv<-solve(data)
                m$setinverse(inv)
                inv
}
