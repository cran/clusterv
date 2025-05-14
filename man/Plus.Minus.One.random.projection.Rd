\name{Plus.Minus.One.random.projection}
\alias{Plus.Minus.One.random.projection}

\title{ Plus-Minus-One (PMO) random projections }
\description{
  Random projections to a lower dimensional subspace with a random +1/-1 projection matrix
The projection is performed using a  projection matrix R s.t. Prob(R[i,j]=1)=Prob(R[i,j]=-1)=1/2.
}
\usage{
Plus.Minus.One.random.projection(d = 2, m, scaling = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{d}{ subspace dimension }
  \item{m}{  data matrix (rows are features and columns are examples) }
  \item{scaling}{ if TRUE (default) scaling is performed }
}
\details{
 \emph{Plus-Minus-One (PMO)} random projections are 
represented by \eqn{d'\times d} matrices \eqn{R = 1/\sqrt{d'} (r_{ij})}, where \eqn{r_{ij}} 
are uniformly chosen in \eqn{\{-1,1\}}, such that \eqn{Prob(r_{ij} = 1) = Prob(r_{ij} = -1) = 1/2}. 
}
\value{
  data matrix (dimension d X ncol(m)) of the examples projected in a d-dimensional random subspace
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}


\seealso{ \code{\link{random.subspace}}, \code{\link{norm.random.projection}},
         \code{\link{Achlioptas.random.projection}}}
\examples{
# PMO projection from a 1000 dimensional space to a 50-dimensional subspace
m <- matrix(runif(10000), nrow=1000)
m.p <- Plus.Minus.One.random.projection(d = 50, m, scaling = TRUE)
# PMO projection from a 10000 dimensional space to a 1000-dimensional subspace
m <- matrix(rnorm(500000), nrow=5000)
m.p <- Plus.Minus.One.random.projection(d = 1000, m, scaling = TRUE)
# The same as above without scaling
m <- matrix(rnorm(500000), nrow=5000)
m.p <- Plus.Minus.One.random.projection(d = 1000, m, scaling = FALSE)
}
\keyword{datagen}
