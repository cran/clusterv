"generate.sample4" <-
function(n=2, sigma=1){
 
  sd <- rep(c(sigma,2*sigma),c(1000,5000));
  
  mean <- rep(0,6000);
  m1 <- rand.norm.generate(n, mean, sd);
  
  mean <- rep(c(1,0),c(1000,5000));
  m2 <- rand.norm.generate(n, mean, sd);
  
  m3 <- rand.norm.generate(n, -mean, sd);
  
  mean <- rep(c(5,0),c(1000,5000));
  m4 <- rand.norm.generate(n, mean, sd);
  
  m5 <- rand.norm.generate(n, -mean, sd);
  
  m <- cbind(m1,m2,m3,m4,m5);
  m  
}
