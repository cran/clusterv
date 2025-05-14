"Cluster.validity" <-
function(cluster, M.clusters, AC=FALSE) {
  dim.Sim.M <- 0;
	c <- length(cluster);
	for (i in 1:c)
	  dim.Sim.M <- dim.Sim.M + length(cluster[[i]]);
	Sim.M <- Do.similarity.matrix(M.clusters, dim.Sim.M);
	vi <- Validity.indices(cluster, c, Sim.M);
	ov.vi <- sum(vi)/c;	
	
	if (AC == TRUE) {
	  ac <- AC.index(cluster, c, Sim.M);		
		res <- list (validity=vi, overall.validity=ov.vi, similarity.matrix=Sim.M, AC=ac);	
	}														 
	else
	  res <- list (validity=vi, overall.validity=ov.vi, similarity.matrix=Sim.M);
	return(res)	
}
