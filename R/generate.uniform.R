"generate.uniform" <-
function(n=11, range=c(0,1)){
  x <- seq(from=range[1], to=range[2], length=n);
	M = matrix(numeric(n*n*2),nrow=2);
	for (i in 0:(n-1))
	  for (j in 1:n) {
		  M[1,i*n + j] <- x[j];
			M[2,i*n + j] <- x[i+1];
	  }
	return(M);
}

