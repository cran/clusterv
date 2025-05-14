"AC.index" <-
function(cluster, c, Sim.M) {
  ac <- matrix( numeric(nrow(Sim.M)*c), nrow=nrow(Sim.M));
	for (i in 1:c) {
	  n.ex <- length(cluster[[i]]);
		if (n.ex == 1) {
		  x <- cluster[[i]][1]; # the singleton element
		  ac[x,i] <- Sim.M[x,x];
		}
		else {															 
		  for (x1 in 1:(n.ex)) {    
			   x <- cluster[[i]][x1];  
				 # computing ac[x,i]                   
		     for (x2 in 1:(n.ex)) {                    			     									  
			     y <- cluster[[i]][x2]; 
					 if (y!=x)       						  
		         ac[x,i] <- ac[x,i] +  Sim.M[x,y];           
		     }
				 ac[x,i] <- ac[x,i] / (n.ex -1);                                         
		  }                                           
		}		
	}
	return(ac);									
}
