"Cluster.validity.from.similarity" <-
function(cluster, Sim.M, AC=TRUE) {
	
	c <- length(cluster); # number of clusters
	# Computing the validity indices vi
	vi <- Validity.indices(cluster, c, Sim.M);
	
	# Computing overall (average) validity of the clustering:
	ov.vi <- sum(vi)/c;	
	
	if (AC == TRUE) {
	  ac <- AC.index(cluster, c, Sim.M);		
		res <- list (validity=vi, overall.validity=ov.vi, AC=ac);	
	}														 
	else
	  res <- list (validity=vi, overall.validity=ov.vi);
	return(res)	
}
