"Generate.clusters" <-
function(tr, c=3) {
  cl <- list();	
	n <- length(tr);
  for (i in 1:n) {
		plot(tr[[i]], main="");
	  cl[i] <- list(stats::rect.hclust(tr[[i]], k = c));
	}
  cl
}
