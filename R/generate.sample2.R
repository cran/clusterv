"generate.sample2" <-
function(n=2){
 
  mean <- rep(c(1,2),c(5000,5000));
  sd <- rep(c(0.5,1,0.5,1),rep(2500,4));
  m1 <- rand.norm.generate(n, mean, sd);
  
  sd <- rep(c(1,2),c(5000,5000));
  m2 <- rand.norm.generate(n, -mean, sd);
  
  m <- cbind(m1,m2);
  m  
}
