calc_principal_minors <- function(A){
  principal_minors <- numeric(nrow(A)) # creates the vector to fill it with the minors
  for (i in 1:nrow(A)) { # iterates all matrix rows 
    submatrix <- matrix(A[1:i, 1:i], nrow=i) # creates every squared submatrix 
    principal_minors[i] <- det(submatrix) # and calc the determinant (minor) of the actual submatrix
  }
  return(principal_minors)
}

# we create a quare matrix of n dimension. In this case i will use the "magic()" function in pracma's library to create a matrix 5x5
library("pracma")
M <- magic(5)

# and we try the function with M:
calc_principal_minors(M)