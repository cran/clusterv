"Plus.Minus.One.random.projection" <-
function(d=2, m, scaling=TRUE){
  d.original <- nrow(m);
  if (d >= d.original)
    stop("norm.random.projection: subspace dimension must be lower than space dimension", call.=FALSE);
  # Projection matrix
  P <- floor(stats::runif(d*d.original,1,3)); # generate a vector 1-2 valued
  P[P==2] <- -1;
  P <- matrix(P, nrow=d);
  
  # random data projection
  if (scaling == TRUE)
    reduced.m <- (P%*%m) * sqrt(1/d)
  else 
    reduced.m <- P%*%m;
  reduced.m
}
