\name{Max.Expansion}
\alias{Max.Expansion}
\alias{Min.Expansion}
\alias{Max.Min.Expansion}
\alias{Average.Expansion}
\alias{Max.Contraction}
\alias{Max.Min.Contraction}
\alias{Average.Contraction}

\title{ Distortion measures: Max., min, and average expansion and contraction }
\description{
  Measures to evaluate the  distortion induced by randomized projection between euclidean spaces.
	They evaluate the maximum, minimum and average expansion and contraction of the distances between pairs of points
	embedded in euclidean spaces.
}
\usage{
Max.Expansion(m, m.rid)

Min.Expansion(m, m.rid)

Max.Min.Expansion(m, m.rid)

Average.Expansion(m, m.rid)

Max.Contraction(m, m.rid)

Max.Min.Contraction(m, m.rid)

Average.Contraction(m, m.rid)
}

\arguments{
  \item{m}{ data matrix in the original space (rows are are examples, columns are components) }
  \item{m.rid}{ data matrix in the reduced space (rows are are examples, columns are components) }
}
\details{
 If \eqn{u, v \in \mathcal{S} \subset \mathcal{R}^d}, 
 \eqn{f:  \mathcal{R}^d \rightarrow \mathcal{R}^d} is a randomized map with \eqn{d' < d},
 then we have:
 \deqn{ max.expansion = max_{u,v \in S} \frac {|| f(u) - f(v) ||} {|| u - v ||}}
 \deqn{ min.expansion = min_{u,v \in S} \frac {|| f(u) - f(v) ||} {|| u - v ||}}
 \deqn{average.expansion = \frac{1}{(|S|*(|S|-1)}  sum_{u,v \in S} \frac{|| f(u) - f(v) ||}{|| u - v ||}}
 \deqn{ max.contraction = max_{u,v \in S} \frac {|| u - v ||}{|| f(u) - f(v) ||} }
 \deqn{ min.contraction = min_{u,v \in S} \frac {|| u - v ||}{|| f(u) - f(v) ||} }
 \deqn{average.contraction = \frac{1}{(|S|*(|S|-1)}  sum_{u,v \in S} \frac{|| u - v ||}{|| f(u) - f(v) ||}}
}
\value{
 Max.Expansion, Min.Expansion,  Average.Expansion, Max.Contraction, Average.Contraction return a single real value.
 Max.Min.Expansion and Max.Min.Contraction a pair (vector) of real values.
}
\references{ A. Bertoni and   G. Valentini,
   Random projections for assessing gene expression cluster stability, Special Session biostatistics and bioinformatics
	 IJCNN 2005, The IEEE-INNS International Joint Conference on Neural Networks, Montreal, 2005. }
\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
# PMO projection from a 1000 dimensional space to a 50-dimensional subspace
m <- matrix(runif(10000), nrow=1000)
m.rid <- Plus.Minus.One.random.projection(d = 50, m, scaling = TRUE)
# Computation of the distortion induced by the PMO projection
max.exps <- Max.Expansion(m, m.rid)
min.exps <- Min.Expansion(m, m.rid)
# the same as above with max e min expansion stored in the same vector
max.min.exps <- Max.Min.Expansion(m, m.rid) 
av.exps <- Average.Expansion(m, m.rid)
max.min.contr <- Max.Min.Contraction(m, m.rid)
av.contr <- Average.Contraction(m, m.rid)
}
\keyword{ misc }
