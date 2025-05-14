"Validity.indices" <-
function(cluster, c, Sim.M) {
	vi <- rep(0,c);
	for (i in 1:c) {
	  n.ex <- length(cluster[[i]]);
		if (n.ex == 1) {
		  x <- cluster[[i]][1];
		  vi[i] <- vi[i] + Sim.M[x,x];
		}
		else {															 
		  for (x1 in 1:(n.ex-1)) {                        
		     for (x2 in (x1+1):n.ex) {                    
			     x <- cluster[[i]][x1]; 									  
			     y <- cluster[[i]][x2];        						  
		       vi[i] <- vi[i] + Sim.M[x,y];                
		     }                                            
		  }                                           
		}
		if (n.ex != 1) 
		  vi[i] <- vi[i] / (n.ex*(n.ex-1)/2);
	}
	return(vi);		
}
