## Pair of functions that cache the inverse of a matrix.


## Do the following activity
   # 1. set the value of matrix
   # 2. get the value of matrix
   # 3. set the value of inversed matrix
   # 4. get the value of inversed matrix

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


## Check is the inverse Matrix is catched, 
## if the catch is empty then inverse is computed 
## else returned from catch

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
