spread <- function (A, loc, dims) 
{
  if (!(is.array(A))) {
    A = array(A, dim = c(length(A)))
  }
  adims = dim(A)
  l = length(loc)
  if (max(loc) > length(dim(A)) + l) {
    stop("incorrect dimensions in spread")
  }
  sdim = c(dim(A), dims)
  edim = c()
  oi = 1
  ni = length(dim(A)) + 1
  for (i in c(1:(length(dim(A)) + l))) {
    if (i %in% loc) {
      edim = c(edim, ni)
      ni = ni + 1
    }
    else {
      edim = c(edim, oi)
      oi = oi + 1
    }
  }
  return(aperm(array(A, dim = sdim), edim))
}