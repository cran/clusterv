"Max.Min.Contraction" <-
function(m, m.rid) {
  d <- stats::dist(m); # it computes the euclidean distance between all pairs of rows of m
  d.rid <- stats::dist(m.rid);
  max.contr <- max(d/d.rid);
  min.contr <- min(d/d.rid);
  contr <- c(max.contr,min.contr);
  contr
}
