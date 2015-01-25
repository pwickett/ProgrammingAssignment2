makeCacheMatrix<-function(x = matrix()){
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
