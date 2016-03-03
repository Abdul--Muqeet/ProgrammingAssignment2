## Put comments here that give an overall description of what your
## functions do

#In first function, a special matrix is generated which can cache its inverse so that it can be used later where 
#its inverse is required
#In second function, I calculated the inverse of a matrix and stored the inverse values using first function. It return the values 
#from cache if the inverse of the matrix has already been calculated.

## Write a short comment describing this function

#This function creates a special matrix which has a property of returning and assigning the contents to the matrix.
#It can also contains the inverse of a matrix and can return its inverse as well.

makeCacheMatrix <- function(x = matrix()) {
        matrixInverse <- NULL
        
        set <- function(y)
        {
                x <<- y
                matrixInverse <<- NULL
        }
        
        get <- function()
        {
                x
        }
        
        setInverse <- function(matInverse)
        {
                matrixInverse <<- matInverse
        }
        
        getInverse <- function()
        {
                matrixInverse
        }
        
        list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function
#It returns the inverse of a matrix of given argument 'x'.
#First, it checks into the cache memory whether it's been calculated or not.
#If it is calculated before then it get the value from cache and return it.
#Otherwise it calculates the inverse of a matrix and return it. Howver, this time it also stores to the cache so
#that it can be used later.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'    
       
        InverseMatrix <- x$getInverse()
        print(InverseMatrix)
        print(x$getInverse())
        if( !is.null(InverseMatrix))
        {
                print("returning the cached inverse")
                InverseMatrix
        }
        else
        {
        Matrix <- x$get()
        InverseMatrix <- solve(Matrix)
        x$setInverse(InverseMatrix)
        InverseMatrix
        }
        
        
}

