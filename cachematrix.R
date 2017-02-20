## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inversedMartix <- NULL
        set <- function(inputMatrix){
                x <<- inputMatrix
                inversedMartix <<- NULL
        }
        get <- function()x
        getInverseMatrix <- function()inversedMartix
        setInverseMatrix <- function(computedMatrix)inversedMartix <<-computedMatrix
        list(set = set,get=get,getInverseMatrix=getInverseMatrix,setInverseMatrix=setInverseMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverseMartixFromCatch <- x$getInverseMatrix()
        if(!is.null(inverseMartixFromCatch)){
                print("From catch !!!")
                return(inverseMartixFromCatch)
        }
        if(!is.null(x$get())){
                inversedMartix <- solve(x$get())
                x$setInverseMatrix(inversedMartix)
                return(inversedMartix)
        }else{
                print("Input is incorrect")
        }
        
        
}
