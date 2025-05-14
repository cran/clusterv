"generate.sample5" <-
function(n=10, dim=10, ratio.noisy=0.8, m=2 ){
 
  if (n < 1)
    stop("generate.sample5: You must generate at least 1 sample per class", call.=FALSE);

	no.noisy.var <- round(dim*(1-ratio.noisy));
	noisy.var <- dim - no.noisy.var;
	if (no.noisy.var<2)
	  stop("generate.sample5: ratio.noisy parameter must be small enough to generate at least 2 no noisy variables", call.=FALSE);
	t <- no.noisy.var * no.noisy.var;
	x <- rep(0.1,times=t);
  B <- matrix(x,nrow=no.noisy.var);
  i<-1:no.noisy.var;
  B[cbind(i,i)]<-1;
  i<-(1:no.noisy.var-1);
  B[cbind(i,i+1)]<-0.5;
  i <- (2:no.noisy.var);
  B[cbind(i,i-1)]<-0.5;
	
	Sigma <- matrix(rep(0,dim*dim), nrow=dim);
	Sigma[1:no.noisy.var,1:no.noisy.var] <- B; 
  Sigma[cbind((no.noisy.var+1):dim,(no.noisy.var+1):dim)] <- 1;
  
  mean <- rep(0,dim);
  m1<-rand.norm.generate.full(n, mean, Sigma);
  
  mean <- rep(c(m,0),c(no.noisy.var,noisy.var));
  m2<-rand.norm.generate.full(n, mean, Sigma);
  		
  m3<-rand.norm.generate.full(n, -mean, Sigma);
	
	if (no.noisy.var%%2 == 0)	
	  mean <- c(rep(c(m,-m),floor(no.noisy.var/2)),rep(0,noisy.var))
	else
	  mean <- c(rep(c(m,-m),floor(no.noisy.var/2)),m,rep(0,noisy.var));
	m4<-rand.norm.generate.full(n, mean, Sigma);
  
  M <- cbind(m1,m2,m3,m4);
  M
}
