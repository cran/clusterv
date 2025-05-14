"generate.sample.h1" <-
function(n=20, l=5, Delta.h=1, sd=0.1, with.I.level.examples=FALSE){

	Center<-5;

	A <- numeric(2);
	B <- numeric(2);
	C <- numeric(2);
	sd <- rep(sd,2);
	sdI <- sd * 4;

	A[1] <- Center + l;
	B[1] <- Center - l;

	d <- l/cos(pi/6);
	y <- sin(pi/6) * d;

	A[2] <- B[2] <- Center + y;

	C <- c(Center,5 - y);
	
	A1 <- A2 <- A;
	B1 <- B2 <- B;
	C1 <- C2 <- C;
	A1[1] = A1[1] - Delta.h;
	B1[1] = B1[1] - Delta.h;
	C1[1] = C1[1] - Delta.h;
	A2[1] = A2[1] + Delta.h;
	B2[1] = B2[1] + Delta.h;
	C2[1] = C2[1] + Delta.h;
  
	if (with.I.level.examples==TRUE) {
	  mA <- rand.norm.generate(n/2, A, sdI);
	  mB <- rand.norm.generate(n/2, B, sdI);
	  mC <- rand.norm.generate(n/2, C, sdI);
	}
	
	mA1 <- rand.norm.generate(n, A1, sd);
  mB1 <- rand.norm.generate(n, B1, sd);
  mC1 <- rand.norm.generate(n, C1, sd);
	mA2 <- rand.norm.generate(n, A2, sd);
  mB2 <- rand.norm.generate(n, B2, sd);
  mC2 <- rand.norm.generate(n, C2, sd);
	
	if (with.I.level.examples==TRUE) 
	  M <- cbind(mA1,mA2,mB1,mB2,mC1,mC2,mA,mB,mC)
	else	
	  M <- cbind(mA1,mA2,mB1,mB2,mC1,mC2);
	return (M);
}

