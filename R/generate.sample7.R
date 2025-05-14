"generate.sample7" <-
function(n=20, m=10, dim=1000, d=3, s=1){
  
  sd <- rep(s,dim);
  mean.base <- rep(m,dim); 
	range <- 1:floor(dim/2);	
	range2 <- (floor(dim/2)+1):dim;
	
	mean <- mean.base;	
  m1 <- rand.norm.generate(n, mean, sd);
  
  mean <- mean.base;
	mean[range] <- mean[range] - d;	
	mean[range2] <- mean[range2] + d;
  m2 <- rand.norm.generate(n, mean, sd);
  
  mean <- mean.base;
	mean[range] <- mean[range] - d;	
	mean[range2] <- mean[range2] - d;	
  m3 <- rand.norm.generate(n, mean, sd);
	
	mean <- -mean.base;
  m4 <- rand.norm.generate(n, mean, sd);
	
	mean <- -mean.base;
	mean[range] <- mean[range] - d;	
	mean[range2] <- mean[range2] + d;	
  m5 <- rand.norm.generate(n, mean, sd);
  
  mean <- -mean.base;
	mean[range] <- mean[range] - d;	
	mean[range2] <- mean[range2] - d;		
  m6 <- rand.norm.generate(n, mean, sd);
  
  M <- cbind(m1,m2,m3,m4,m5,m6);
	
	return(M);
}

