"Random.hclustering.validity" <-
function(M, dim, pmethod="RS", c=3, hmethod="average", n=50, scale=TRUE, seed=100, AC=TRUE, distance="euclidean") {
  dim.Sim.M <- ncol(M);
	# A. Perform multiple clusterings using randomized embeddings
	lRS <- switch(pmethod,
	              RS = RS.hclustering (M, dim, c, hmethod, n, scale, seed, distance),
								PMO = PMO.hclustering(M, dim, c, hmethod, n, scale, seed, distance),
								Norm = Norm.hclustering(M, dim, c, hmethod, n, scale, seed, distance),
								Achlioptas = Achlioptas.hclustering(M, dim, c, hmethod, n, scale, seed, distance));
	# B. Update similarity matrix
	Sim.M <- Do.similarity.matrix(lRS$cluster, dim.Sim.M);
	
	# computing the list of validity measures
	# C. computing the clusters in the original space
	if (distance == "euclidean")
		  d <- stats::dist (t(M))
	else if (distance == "pearson")
			d <- stats::as.dist(1 - stats::cor(M))
	else
	    stop("Random.hclustering.validity: distance measure not implemented");
	tree <- stats::hclust(d, method = hmethod);
  plot(tree, main="");
	cl.orig <- stats::rect.hclust(tree, k = c);
	# D. computing the validity indices vi
	vi <- Validity.indices(cl.orig, c, Sim.M);
	
	# E. Computing overall (average) validity of the clustering:
	ov.vi <- sum(vi)/c;	
	
	if (AC == TRUE) {
	  ac <- AC.index(cl.orig, c, Sim.M);		
		res <- list (validity=vi, overall.validity=ov.vi, similarity.matrix=Sim.M, dimension=dim, 
	             cluster=lRS$cluster, tree=lRS$tree, orig.tree=tree, orig.cluster=cl.orig, AC=ac);
	}														 
	else															 
	  res <- list (validity=vi, overall.validity=ov.vi, similarity.matrix=Sim.M, dimension=dim, 
	             cluster=lRS$cluster, tree=lRS$tree, orig.tree=tree, orig.cluster=cl.orig);
	return(res);	
}
