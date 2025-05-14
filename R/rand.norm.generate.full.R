"rand.norm.generate.full" <-
function(n=5, mean=c(0,0), Sigma=matrix(c(0.1,0,0 ,0.1),2,2)){
  len.mean <- length(mean);
  if (len.mean!=nrow(Sigma))
    stop("rand.norm.generate.full: Length of mean and number of rows of Sigma must match", call.=FALSE);
  if (len.mean!=ncol(Sigma))
    stop("rand.norm.generate.full: Length of mean and number of columns of Sigma must match", call.=FALSE);
  m <- t(MASS::mvrnorm(n, mean, Sigma));
  m
}
