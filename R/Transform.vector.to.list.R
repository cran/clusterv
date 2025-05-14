"Transform.vector.to.list" <-
function (v) {
  if (is.integer(v) == FALSE)
	  stop("Transform.vector.to.list: the elements of the input vector must be integers", call.=FALSE);
	# relabeling of the classes in order to avoid (that is the labels of the classes will be consecutive integers)
	n.examples <- length(v);
	new.v <- integer(n.examples); # vector with relabeled elements
	max.class <- max(v);
	v.index <- integer(max.class); # vector of the class indices for label translation
	label.class <- 0;
	
	for (i in 1:n.examples) {
	  old.label <- v[i]; # old label of the ith example
		if (v.index[old.label] == 0) {
		  label.class <- label.class + 1;
			v.index[old.label] <- label.class;
	  }
		new.v[i] <- v.index[old.label];	
	}
	# building of the list of clusters
	cl =list();
	for (i in 1:n.examples) {
	  if (length(cl) < new.v[i]) 
	    cl[[new.v[i]]] <- i
		else  
		  cl[[new.v[i]]][length(cl[[new.v[i]]]) + 1] <- i;
	}
	return(cl);
}
