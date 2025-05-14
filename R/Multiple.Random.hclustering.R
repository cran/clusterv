"Multiple.Random.hclustering" <-
function(M, dim, pmethod="RS", c=3, hmethod="average", n=50, scale=TRUE, seed=100, 
                                                                                           distance="euclidean") {
  dim.Sim.M <- ncol(M);
	# A. Perform multiple clusterings using randomized embeddings
	lRS <- switch(pmethod,
	              RS = RS.hclustering (M, dim, c, hmethod, n, scale, seed, distance),
								PMO = PMO.hclustering(M, dim, c, hmethod, n, scale, seed, distance),
								Norm = Norm.hclustering(M, dim, c, hmethod, n, scale, seed, distance),
								Achlioptas = Achlioptas.hclustering(M, dim, c, hmethod, n, scale, seed, distance));
	
	return(lRS$cluster);								 
}
