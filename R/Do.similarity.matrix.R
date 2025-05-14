"Do.similarity.matrix" <-
function(l, dim.Sim.M) {
  Sim.M <- matrix(numeric(dim.Sim.M*dim.Sim.M), nrow=dim.Sim.M);
	singletons <- numeric(dim.Sim.M);  
	n <- length(l);  # number of projections (clusterings)
	for (i in 1:n)  {
	   cl <- l[[i]];
		 c <- length(cl); # number of clusters for the current clustering
	   for (j in 1:c) {
		   n.ex <- length(cl[[j]]);
			if (n.ex == 1)
			  singletons[cl[[j]][1]] <- singletons[cl[[j]][1]] + 1
			else {
			    for (x1 in 1:(n.ex-1)) {
			       for (x2 in (x1+1):n.ex) {
			         x <- cl[[j]][x1];
				       y <- cl[[j]][x2];
			         Sim.M[x,y] <- Sim.M[x,y] + 1;
			       }
			    }
			 }
		 }
	}
	for (x1 in 1:(dim.Sim.M-1)) 
		for (x2 in (x1+1):dim.Sim.M) 
		  Sim.M[x2,x1] <- Sim.M[x1,x2];
	for (x in 1:(dim.Sim.M)) 
	   Sim.M[x,x] <- singletons[x];
	Sim.M <- Sim.M / n;
	return(Sim.M);
}
