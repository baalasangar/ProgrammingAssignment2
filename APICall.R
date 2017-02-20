makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}



makeVecorFUN <-makeVector(c(1,2,3))

cachemean(makeVecorFUN)



getwd()

setwd("C:\\01_D_DRIVE\\MyFiles\\07_Certification\\DataScience\\Assignment")
source("./ProgrammingAssignment2/cachematrix.R")

catchMatrixFun <- makeCacheMatrix(matrix(c(1,2,3,4),2,2))
cacheSolve(catchMatrixFun)

cacheSolve(makeCacheMatrix(matrix(c(1,2,3,4),2,2)))