"random.subspace" <-
function(d=2, m, scaling=TRUE){
  d.original <- nrow(m);
  if (d >= d.original)
    stop("random.subspace: subspace dimension must be lower than space dimension", call.=FALSE);
  # generation of the vector selected.features  containing the indices randomly selected
  selected.features <- random.component.selection(d, d.original);

  # random data projection
  if (scaling == TRUE)
    reduced.m <- sqrt(d.original/d) * m[selected.features,]
  else 
    reduced.m <- m[selected.features,];
  reduced.m 
}
