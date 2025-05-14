"rand.norm.generate" <-
function(n=5, mean=0, sd=1){
  len.mean <- length(mean);
  len.sd <- length(sd);
  if (len.mean!=len.sd)
    stop("rand.norm.generate: Length of mean and sd vector must match", call.=FALSE);
  len.vect <- n*len.mean;
  m <- stats::rnorm(len.vect, mean, sd);
  m <- matrix(m, nrow=len.mean);
  m
}
