"generate.uniform.random" <-
function(n=100, range=c(0,1)){
  x <- range[1] + stats::runif(n) * (range[2]-range[1]);
	y <- range[1] + stats::runif(n) * (range[2]-range[1]);
	M <- rbind(x,y);
	return(M);
}

