"generate.sample0" <-
function(n=5, m=10, sigma=1, dim=2){
  
  sd <- rep(sigma,dim);
  mean <- rep(0,dim); 
  m1 <- rand.norm.generate(n, mean, sd);
  
  mean <- rep(m,dim); 
  m2 <- rand.norm.generate(n, mean, sd);
  
  mean <- rep(-m,dim); 
  m3 <- rand.norm.generate(n, mean, sd); 
  
  m <- cbind(m1,m2,m3);
  m  
}
