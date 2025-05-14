"JL.predict.distortion" <-
function(n, dim=10) {
  epsilon <- sqrt(4 * log(n) / dim);
  epsilon
}
