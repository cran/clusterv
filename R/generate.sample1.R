"generate.sample1" <-
function(n=2, m=6, sigma=1, dim=10000){
  
	if (dim<500) 
	  stop("generate.sample1 need at least 500 variables");
	
  mean <- rep(0,dim);
  sd <- rep(sigma,dim);
  m1 <- rand.norm.generate(n, mean, sd);
  
  mean <- rep(c(m,0),c(500,dim-500));
  m2 <- rand.norm.generate(n, mean, sd);
  
  mean <- rep(c(-m,0),c(500,dim-500));
  m3 <- rand.norm.generate(n, mean, sd); 
  
  m <- cbind(m1,m2,m3);
  m  
}
