"JL.predict.dim.multiple" <-
function(n, epsilon=0.5, t=10) {
  d <- 4 * ((log(n)+log(t)) / epsilon^2);
  ceiling(d)
}
