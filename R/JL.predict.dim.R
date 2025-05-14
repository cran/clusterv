"JL.predict.dim" <-
function(n, epsilon=0.5) {
  d <- 4 * (log(n) / epsilon^2);
  ceiling(d)
}
