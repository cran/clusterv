"Multiple.Random.fuzzy.kmeans" <-
function(M, dim, pmethod="PMO", c=3,  n=50, 
                                        scale=TRUE, seed=-1, distance="euclidean") {
  if (seed == -1)
	   seed <- round(stats::runif(1,1,10000));
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
	  if (distance == "euclidean")
		  d <- stats::dist (t(P.M))
		else 
			d <- stats::as.dist(1 - stats::cor(P.M));
		r <- cluster::fanny(d, c);		
		cl[[i]] <- Transform.vector.to.list(r$clustering);
	}
	return(cl);								 
}
