A=c(0,1/3,0,1/3,1/3,
    0,0,1/3,1/3,1/3,
    1/2,0,0,1/2,0,
    0,0,0,0,1,
    0,0,1,0,0)
A=matrix(A,c(5,5))
power <- function(x, A, n) {
  q <- x / sqrt(sum(x^2))
  for (i in 1:n) {
    x <- A %*% q
    q < x / sqrt(sum(x^2))
  } 
  return(q)
}

x <- c(1,1,1,1,1)
q <- power(x, A, 10)
(lambda <- t(q) %*% A %*% q)

eigen(A)
