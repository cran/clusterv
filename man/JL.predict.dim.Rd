\name{JL.predict.dim}
\alias{JL.predict.dim}
\alias{JL.predict.dim.multiple}
\alias{JL.predict.distortion}

\title{ Dimension of the subspace or the distortion predicted according to the Johnson Lindenstrauss lemma }
\description{
  Functions to compute the dimension of the subspace or the distortion predicted by the Johnson Lindenstrauss lemma.
}
\usage{
JL.predict.dim(n, epsilon = 0.5)

JL.predict.dim.multiple(n, epsilon = 0.5, t = 10)

JL.predict.distortion(n, dim = 10)
}

\arguments{
  \item{n}{ cardinality of the data }
  \item{epsilon}{ distortion (0 < epsilon <= 0.5) }
  \item{t}{ number of multiple projections }
	\item{dim}{ dimensionality of the projected subspace }
}
\details{
  \code{JL.predict.dim} predicts  the dimension of random projection we need to obtain a given distortion according 
	to JL lemma:
	\deqn{ d = 4 * \frac{\log{n}}{ \epsilon^2}}
	where \eqn{d} is the dimension of the random projection, \eqn{n} the cardinality of the data and 
	\eqn{1+\epsilon} the theoretical distortion (maximum expansion) induced by the randomized projection into the
	d-dimensional subspace.
	
	\code{JL.predict.dim.multiple} predicts  the dimension of random projection we need to obtain a given distortion according 
	to JL lemma when t multiple projections are performed:
	\deqn{ d = 4 * \frac{\log{n} + \log{t}}{ \epsilon^2}}
	where \eqn{d} is the dimension of the random projection, \eqn{n} the cardinality of the data and 
	\eqn{1+\epsilon} the theoretical distortion (maximum expansion) induced by the randomized projection into the
	d-dimensional subspace.
	
	\code{JL.predict.distortion} predicts  the  distortion of a random projection for a given subspace dimension according 
	to JL lemma
	\deqn{ \epsilon = \sqrt{\frac{4 * \log{n}}  {d}}}
	where \eqn{d} is the dimension of the random projection, \eqn{n} the cardinality of the data and 
	\eqn{1+\epsilon} the theoretical distortion (maximum expansion) induced by the randomized projection into the
	d-dimensional subspace.
}
\value{
  the corresponding dimension of the subspace or the \eqn{\epsilon} value of the \eqn{1+\epsilon} max. expansion
	(distortion)
}
\references{ W.Johnson, J.Lindenstrauss, Extensions of Lipshitz mapping into Hilbert
  space, in: Conference in modern analysis and probability, Vol. 26 of
  Contemporary Mathematics, Amer. Math. Soc., 1984, pp. 189--206. }
\author{ Giorgio Valentini \email{valentini@di.unimi.it}}


\seealso{ \code{\link{Plus.Minus.One.random.projection}}, \code{\link{norm.random.projection}},

         \code{\link{Achlioptas.random.projection}},  \code{\link{random.subspace}}}
\examples{
# dimension of the projected space that we need to obtain a theoretical 1.5 distortion 
# (max. expansion), when 20 data examples are available.
d <- JL.predict.dim(n=20, epsilon = 0.5)
# dimension of the projected space that we need to obtain a theoretical 1.2 distortion 
#(max. expansion), when 20 data examples are available, and 10 random projections
d <- JL.predict.dim.multiple(n=20, epsilon = 0.5, t = 10)
# distortion 1+epsilon that is obtained with 30 examples and a random projection 
# in a 100-dimensional subspace
epsilon <- JL.predict.distortion(n=30, dim = 100)
}
\keyword{ misc }
