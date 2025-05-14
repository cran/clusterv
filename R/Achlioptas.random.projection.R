"Achlioptas.random.projection" <-
function(d=2, m, scaling=TRUE){
  d.original <- nrow(m);
  if (d >= d.original)
    stop("norm.random.projection: subspace dimension must be lower than space dimension", call.=FALSE);
  # Projection matrix
  P <- floor(stats::runif(d*d.original,1,7)); # generate a vector 1 to 6 valued
  sqr3 <- sqrt(3);
  P[P==1] <- sqr3;
  P[P==6] <- -sqr3;
  P[P==2 | P==3 | P==4 | P==5] <- 0;
  P <- matrix(P, nrow=d);
  
  # random data projection
  if (scaling == TRUE)
    reduced.m <- sqrt(1/d) * (P%*%m)
  else 
    reduced.m <- P%*%m;;
  reduced.m 
}
