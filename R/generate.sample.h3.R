"generate.sample.h3" <-
function(n=20, DeltaA=1, DeltaB=1, seed=0){
  if (seed != 0)
	  set.seed(seed);
  # I level cluster centers and standard dev.
	A <- c(2,8);
	sigmaA <- c(0.2,0.8);
	B <- c(7,7);
	sigmaB <- c(0.5,0.2);
	C <- c(6,3);
	SigmaC <- matrix(c(0.6,0.4,0.4,0.3),2,2);
	D <- c(4,5);
	sigmaD <- c(0.3,0.2);
	
  # I level cluster generation
	mA <- rand.norm.generate(n/2, mean=A, sd=sigmaA);
	mB <- rand.norm.generate(round(n/3), mean=B, sd=sigmaB);
	mC <- rand.norm.generate.full(2*n, mean=C, Sigma=SigmaC);
  mD <- rand.norm.generate(n/2, mean=D, sd=sigmaD);
	
	# II level cluster centers and stdev.
	A1 <- c(A[1],A[2]+DeltaA);
	A2 <- c(A[1],A[2]-DeltaA);
	sigmaA <- c(0.2,0.2);
	B1 <- c(B[1]+DeltaB,B[2]);
	B2 <- c(B[1]-DeltaB,B[2]);
	sigmaB <- c(0.2,0.2);
	
	 # I level cluster generation
	mA1 <- rand.norm.generate(n, mean=A1, sd=sigmaA);
	mA2 <- rand.norm.generate(n, mean=A2, sd=sigmaA);
	mB1 <- rand.norm.generate(n, mean=B1, sd=sigmaB);
  mB2 <- rand.norm.generate(n, mean=B2, sd=sigmaB);
	
	M <- cbind(mA,mB,mC,mD,mA1,mA2,mB1,mB2)
	return (M);
}

