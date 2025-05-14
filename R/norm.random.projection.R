"norm.random.projection" <-
function(d=2, m, scaling=TRUE){
  d.original <- nrow(m);
  if (d >= d.original)
    stop("norm.random.projection: subspace dimension must be lower than space dimension", call.=FALSE);
  # Projection matrix
  P <- stats::rnorm(d*d.original);
  P <- matrix(P, nrow=d);
  
  # random data projection
  if (scaling == TRUE)
    reduced.m <- sqrt(1/d) * (P%*%m)
  else 
    reduced.m <- P%*%m;
  reduced.m 
}
