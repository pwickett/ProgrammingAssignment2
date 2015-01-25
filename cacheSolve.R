cacheSolve<-function(x, ...) {
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
