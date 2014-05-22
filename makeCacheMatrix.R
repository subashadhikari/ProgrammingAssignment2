## caching inverse of a matrix ##

# makeCacheMatrix - create matrix object that can cache it's inverse 
# cacheSolve - computes inverse of matrix returned by makeCacheMatrix above 
  
    #if inverse already calculated (and matrix not changed) - cachesolve retrieve inverse from cache 


##First part##
makeCacheMatrix <- function(x = matrix()) {
                                              
    inverse.cache <- NULL                            # inverse.cache stores cached matrix inverse 
  
    set <- function(y) {                             # set matrix cache 
        x <<- y
        inverse.cache <<- NULL
    }
    
    get <- function() x                              # retrieve from matrix cache 

    
    set.inverse <- function(inverse) inverse.cache <<- inverse   
                                                     # set inverse cache 
    
    get.inverse <- function() inverse.cache          # retrieve from inverse cache 

    
    list(set = set, get = get, set.inverse = set.invserse, get.inverse = get.inverse) 
                                                     # Return the matrix with our newly defined functions
}


##Second part ##

cacheSolve <- function(x, ...) {
    inverse.cache <- x$get.inverse()

if (!is.null(inverse.cache)) {                        #return inverse if calculated previously 

        
        return(inverse.cache)
    }

data <- x$get()
    inverse.cache <- solve(data, ...)                # calculate inverse if not previously calculated 

x$setinv(inverse.cache)                              # cache inverse 

cache.inverse

}
