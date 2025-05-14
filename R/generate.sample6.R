"generate.sample6" <-
function(n=20, m=10, dim=2, d=3, s=0.2){
  
  sd <- rep(s,dim);
  mean.base <- rep(m,dim); 
	range <- 1:floor(dim/2);	
	range2 <- (floor(dim/2)+1):dim;
	
	mean <- mean.base;
	mean[range] <- mean[range] - d;	
  m1 <- rand.norm.generate(n, mean, sd);
  
  mean <- mean.base;
	mean[range] <- mean[range] + d;	
  m2 <- rand.norm.generate(n, mean, sd);
  
  mean <- mean.base;
	mean[range2] <- mean[range2] - d;	
  m3 <- rand.norm.generate(n, mean, sd);
	
	mean <- -mean.base;
	mean[range] <- mean[range] - d;	
  m4 <- rand.norm.generate(n, mean, sd);
	
	mean <- -mean.base;
	mean[range] <- mean[range] + d;	
  m5 <- rand.norm.generate(n, mean, sd);
  
  mean <- -mean.base;
	mean[range2] <- mean[range2] - d;	
  m6 <- rand.norm.generate(n, mean, sd);
  
  M <- cbind(m1,m2,m3,m4,m5,m6);
	
	return(M);
}

