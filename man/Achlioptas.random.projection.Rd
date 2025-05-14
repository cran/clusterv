\name{Achlioptas.random.projection}
\alias{Achlioptas.random.projection}

\title{ Achlioptas random projection }
\description{
  Random projections to a lower dimension subspace with the Achlioptas' projection matrix.
 The projection is performed using a  projection matrix R s.t. Prob(R[i,j]=sqrt(3))=Prob(R[i,j]=-sqrt(3)=1/6;
 Prob(R[i,j]=0)=2/3
}
\usage{
Achlioptas.random.projection(d = 2, m, scaling = TRUE)
}

\arguments{
  \item{d}{ subspace dimension }
  \item{m}{  data matrix (rows are features and columns are examples) }
  \item{scaling}{ if TRUE (default) scaling is performed }
}
\details{
   \emph{Achlioptas} random projections are
represented by \eqn{d'\times d} matrices \eqn{P = 1/\sqrt{d'} (r_{ij})}, where \eqn{r_{ij}} 
are  chosen in \eqn{\{-\sqrt{3},0,\sqrt{3}\}}, such that 
\eqn{Prob(r_{ij} = 0) = 2/3}, \eqn{Prob(r_{ij} = \sqrt{3}) = Prob(r_{ij} = -\sqrt{3}) = 1/6}. 
In this case also we have \eqn{E[r_{ij}] = 0} and  \eqn{Var[r_{ij}] = 1} and the Johnson-Lindenstrauss lemma holds.
}
\value{
  data matrix (dimension d x ncol(m)) of the examples projected in a d-dimensional random subspace
}
\references{D.Achlioptas, Database-friendly random projections., in: Proc. ACM Symp. on
  the Principles of Database Systems, Contemporary Mathematics, 2001, pp.
  274-281.
	
	W.Johnson, J.Lindenstrauss, Extensions of Lipshitz mapping into Hilbert
  space, in: Conference in modern analysis and probability, Vol.~26 of
  Contemporary Mathematics, Amer. Math. Soc., 1984, pp. 189--206.
	}
\author{ Giorgio Valentini \email{valentini@di.unimi.it}}


\seealso{ \code{\link{Plus.Minus.One.random.projection}}, \code{\link{norm.random.projection}},
         \code{\link{random.subspace}}}
\examples{
# Achlioptas random projection from a 1000 dimensional space to a 50-dimensional subspace
m <- matrix(runif(10000), nrow=1000)
m.p <- Achlioptas.random.projection(d = 50, m, scaling = TRUE)
# Achlioptas random projection from a 10000 dimensional space to a 1000-dimensional subspace
m <- matrix(rnorm(500000), nrow=5000)
m.p <- Achlioptas.random.projection(d = 1000, m, scaling = TRUE)
# The same as above without scaling
m <- matrix(rnorm(500000), nrow=5000)
m.p <- Achlioptas.random.projection(d = 1000, m, scaling = FALSE)
}
\keyword{datagen}
