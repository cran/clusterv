"generate.sample3" <-
function(n=2, m=2){
  if (n < 2)
    stop("generate.sample3: You must generate at least 2 samples per class", call.=FALSE);
  Sigma <- matrix(rep(0,1000*1000), nrow=1000);
  B <- matrix(rep(1,300*300),nrow=300)*0.1;
  i<-1:300;
  B[cbind(i,i)]<-1;
  i<-1:299;
  B[cbind(i,i+1)]<-0.5;
  i <- 2:300;
  B[cbind(i,i-1)]<-0.5;
  Sigma[1:300,1:300] <- B;
  Sigma[cbind(301:1000,301:1000)] <- 1;
  
  mean <- rep(0,1000);
  m1<-rand.norm.generate.full(n, mean, Sigma);
  
  mean <- rep(c(m,0),c(300,700));
  m2<-rand.norm.generate.full(n, mean, Sigma);
  
  m3<-rand.norm.generate.full(n, -mean, Sigma);
  
  m <- cbind(m1,m2,m3);
  m
}
