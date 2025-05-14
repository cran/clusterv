"Norm.hclustering" <-
function(M, dim, c=3, hmethod="average", n=50, scale=TRUE, seed=100, distance="euclidean") {
  cl <- list();
	tr <- list();
	set.seed(seed);
  for (i in 1:n) {
	  P.M<- norm.random.projection(d=dim, M, scaling=scale);
		if (distance == "euclidean")
		  d <- stats::dist (t(P.M))
		else if (distance == "pearson")
			d <- stats::as.dist(1 - stats::cor(P.M))
	  else
	    stop("distance measure not implemented");
	  tr[i] <- list(stats::hclust(d, method = hmethod));
		plot(tr[[i]], main="");
	  cl[i] <- list(stats::rect.hclust(tr[[i]], k = c));
	}
  l <- list(cluster=cl, tree=tr);
  l
}
