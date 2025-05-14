\name{norm.random.projection}
\alias{norm.random.projection}
 

\title{ Normal random projections }
\description{
  Random projections to a lower dimension subspace with a normal distributed projection matrix
 The projection is performed using a normally distributed projection matrix R: its elements R[i,j] ~ N(0,1).
}
\usage{
norm.random.projection(d = 2, m, scaling = TRUE)
}

\arguments{
 \item{d}{ subspace dimension }
 \item{m}{  data matrix (rows are features and columns are examples) }
 \item{scaling}{ if TRUE (default) scaling is performed }
}
\details{
 \emph{Normal} random projections are randomized map  represented by a \eqn{d'\times d} matrix
 \eqn{R = 1/\sqrt{d'}(r_{ij})}, where \eqn{r_{ij}} are  distributed according to a gaussian  with 0 mean 
 and unit variance, and  \eqn{d'} is the
 dimension of the projected space and \eqn{d} the dimension of the original space.
}
\value{
 data matrix (dimension d x ncol(m)) of the examples projected in a d-dimensional  subspace
}
\references{ E.Bingham, H.Mannila, Random projection in dimensionality reduction:
  Applications to image and text data, in: Proc. of KDD 01, ACM, San Francisco,
  CA, USA, 2001. }
\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\seealso{ \code{\link{Plus.Minus.One.random.projection}}, \code{\link{random.subspace}},
         \code{\link{Achlioptas.random.projection}} }
\examples{
# Normal random projection from a 1000 dimensional space to a 
# 50-dimensional subspace
m <- matrix(runif(10000), nrow=1000)
m.p <- norm.random.projection(d = 50, m, scaling = TRUE)
# Normal random subspace projection from a 10000 dimensional space 
# to a 1000-dimensional subspace
m <- matrix(rnorm(500000), nrow=5000)
m.p <- norm.random.projection(d = 1000, m, scaling = TRUE)
# The same as above without scaling
m <- matrix(rnorm(500000), nrow=5000)
m.p <- norm.random.projection(d = 1000, m, scaling = FALSE)
}
\keyword{datagen}
