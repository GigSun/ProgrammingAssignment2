## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
              # Initialize the cashed inverse
              inverse<- NULL
              # function to set the matrix
              set <- function(matrix){
                x<<-matrix
                inverse<<-NULL
              }
              #function to get the matrix
              get <-function(){
                x}
              
              # function to cached the inverse
              setInverseMatrix <-function(inverseMatrix) {
                inverse <- inverseMatrix}
              
              #function to get the cached the inverse
              getInverseMatrix <- function() {
                inverse}
              
              # Return a list of function
              list(set = set, get = get, 
                   setInverseMatrix = setInverseMatrix,
                   getInverseMatrix =getInverseMatrix)
              
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverseMatrix()
        if(!is.null(inverse)){
          message("getting cached data")
          return (inverse)
        }
        
        # calculate the inverse if the not cached.
        data<- x$get()
        inverse <- solve(data, ...)
        x$setInverseMatrix(inverse)
        
        # return 
        inverse

}
