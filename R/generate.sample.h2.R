"generate.sample.h2" <-
function(n=20, l=8, Delta.h=2,  Delta.v=1, sd=0.1, with.I.II.level.examples=FALSE){

	Center<-5;

	A <- numeric(2);
	B <- numeric(2);
	C <- numeric(2);
	sd <- rep(sd,2);
	sdI <- c(Delta.h/2,Delta.h/2);
	sdII <- c(Delta.v/2,Delta.v/2);

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
	
	A1.1 <- A1.2 <- A1;
	A2.1 <- A2.2 <- A2;
	B1.1 <- B1.2 <- B1;
	B2.1 <- B2.2 <- B2;
	C1.1 <- C1.2 <- C1;
	C2.1 <- C2.2 <- C2;
	
	A1.1[2] = A1.1[2] - Delta.v;
	B1.1[2] = B1.1[2] - Delta.v;
	C1.1[2] = C1.1[2] - Delta.v;
	A2.1[2] = A2.1[2] - Delta.v;
	B2.1[2] = B2.1[2] - Delta.v;
	C2.1[2] = C2.1[2] - Delta.v;
	
	A1.2 [2]= A1.2[2] + Delta.v;
  B1.2 [2]= B1.2[2] + Delta.v;
  C1.2 [2]= C1.2[2] + Delta.v;
  A2.2 [2]= A2.2[2] + Delta.v;
  B2.2 [2]= B2.2[2] + Delta.v;
  C2.2 [2]= C2.2[2] + Delta.v;
	
	mA1.1 <- rand.norm.generate(n, A1.1, sd);
	mA1.2 <- rand.norm.generate(n, A1.2, sd);
	mA2.1 <- rand.norm.generate(n, A2.1, sd);
  mA2.2 <- rand.norm.generate(n, A2.2, sd);
  mB1.1 <- rand.norm.generate(n, B1.1, sd);
  mB1.2 <- rand.norm.generate(n, B1.2, sd);
  mB2.1 <- rand.norm.generate(n, B2.1, sd);
  mB2.2 <- rand.norm.generate(n, B2.2, sd);
	mC1.1 <- rand.norm.generate(n, C1.1, sd);
	mC1.2 <- rand.norm.generate(n, C1.2, sd);
	mC2.1 <- rand.norm.generate(n, C2.1, sd);
  mC2.2 <- rand.norm.generate(n, C2.2, sd);
  
	if (with.I.II.level.examples==TRUE) {
	  mA <- rand.norm.generate(n/4, A, sdI);
	  mB <- rand.norm.generate(n/4, B, sdI);
	  mC <- rand.norm.generate(n/4, C, sdI);
		mA1 <- rand.norm.generate(n/2, A1, sdII);
		mB1 <- rand.norm.generate(n/2, B1, sdII);
		mC1 <- rand.norm.generate(n/2, C1, sdII);
		mA2 <- rand.norm.generate(n/2, A2, sdII);
		mB2 <- rand.norm.generate(n/2, B2, sdII);
		mC2 <- rand.norm.generate(n/2, C2, sdII);    
	}
	
	if (with.I.II.level.examples==TRUE) 
	  M <- cbind(mA1.1,mA1.2,mA2.1,mA2.2,mB1.1,mB1.2,mB2.1,mB2.2,mC1.1,mC1.2,mC2.1,mC2.2,mA1,mA2,mB1,mB2,mC1,mC2,mA,mB,mC)
	else	
	  M <- cbind(mA1.1,mA1.2,mA2.1,mA2.2,mB1.1,mB1.2,mB2.1,mB2.2,mC1.1,mC1.2,mC2.1,mC2.2);
	return (M);
}

