\name{random.subspace}
\alias{random.subspace}

\title{ Random Subspace (RS) projections }
\description{
  Random projections to a lower dimension subspace (random subspace method)
The projection is performed randomly selecting a subset of variables (components) and then projecting 
the data onto the selected components.
It is the projection used by Ho for her Random subspace ensemble algorithm. 
}
\usage{
random.subspace(d = 2, m, scaling = TRUE)
}

\arguments{
  \item{d}{ subspace dimension }
  \item{m}{  data matrix (rows are features and columns are examples) }
  \item{scaling}{ if TRUE (default) scaling is performed }
}
\details{
  \emph{ Random Subspace (RS)} are randomized maps represented by \eqn{d' \times d} matrices \eqn{R =\sqrt{d/d'}
	(r_{ij})}, where \eqn{r_{ij}} are uniformly chosen with entries in \eqn{\{0,1\}}, 
	and with exactly one 1 per row and at most one 1 per column (\eqn{d'} is the
 dimension of the projected space and \eqn{d} the dimension of the original space).
It is worth noting that, in this case, 
the "compressed" data set \eqn{D_R = R D} can be quickly computed in  time \eqn{\mathcal{O}(n d')}, independently from 
\eqn{d}.
}
\value{
  data matrix (dimension d X ncol(m)) of the examples projected in a d-dimensional random subspace
}
\references{ 
  T.Ho, The random subspace method for constructing decision forests, IEEE
  Transactions on Pattern Analysis and Machine Intelligence 20 (8) (1998)
  832-844. }
\author{ Giorgio Valentini \email{valentini@di.unimi.it}}



\seealso{ \code{\link{Plus.Minus.One.random.projection}}, \code{\link{norm.random.projection}},

         \code{\link{Achlioptas.random.projection}}}
\examples{
# Random subspace projection from a 1000 dimensional space 
# to a 50-dimensional subspace
m <- matrix(runif(10000), nrow=1000)
m.p <- random.subspace(d = 50, m, scaling = TRUE)
# Random subspace projection from a 10000 dimensional space 
# to a 1000-dimensional subspace
m <- matrix(rnorm(500000), nrow=5000)
m.p <- random.subspace(d = 1000, m, scaling = TRUE)
# The same as above without scaling
m <- matrix(rnorm(500000), nrow=5000)
m.p <- random.subspace(d = 1000, m, scaling = FALSE)
}
\keyword{datagen}
