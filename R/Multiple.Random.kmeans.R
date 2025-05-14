"Multiple.Random.kmeans" <-
function(M, dim, pmethod="PMO", c=3,  n=50, it.max=1000, scale=TRUE, seed=100) {
  set.seed(seed);
	cl <- list();
	for (i in 1:n) {
	  # A. selection of the randomized map
	  P.M <- switch(pmethod,
	                RS = random.subspace(d=dim, M, scaling=scale),
	                PMO = Plus.Minus.One.random.projection(d=dim, M, scaling=scale),
	                Norm = norm.random.projection(d=dim, M, scaling=scale),
	                Achlioptas = Achlioptas.random.projection(d=dim, M, scaling=scale),
									stop("Multiple.Random.kmeans: not supported random projection.", call.=FALSE));
		r <- stats::kmeans(t(P.M), c, iter.max = it.max);
		cl[[i]] <- Transform.vector.to.list(r$cluster);
	}
	return(cl);								 
}
