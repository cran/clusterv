"Average.Expansion" <-
function(m, m.rid) {
  d <- stats::dist(m); # it computes the euclidean distance between all pairs of rows of m
  d.rid <- stats::dist(m.rid);
  s <- length(d);
  average.expansion <- (1/s) * sum(d.rid/d);
  average.expansion  
}
