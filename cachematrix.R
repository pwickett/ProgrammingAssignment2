## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Create a special matrix object that can
        ## cashe its inverse.
        
        I<-NULL
        set<-function(y){
                x<<-y
                I<<-NULL
        }
        get<-function() x
        setinverse<-function(solve) I<<-solve
        getinverse<-function() I
        list(set=set,get=get),
        setinverse=setinverse,
        getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'.
        ## If the inverse has already been calculated
        ## and matrix not change then it retrieves inverse
        ## from cache.
        
        I<-x$getinverse()
        if(!is.null(I)) {
                message("getting cached data")
                return(I)
        }
        matix<-x$get
        I<-solve(matrix,...)
        x$setinverse(I)
        I
}

}
