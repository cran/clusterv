"Min.Expansion" <-
function(m, m.rid) {
  d <- stats::dist(m); # it computes the euclidean distance between all pairs of rows of m
  d.rid <- stats::dist(m.rid);
  min.exps <- min(d.rid/d);
  min.exps
}
