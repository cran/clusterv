\name{Multiple.Random.fuzzy.kmeans}
\alias{Multiple.Random.fuzzy.kmeans}

\title{ Multiple Random fuzzy-k-means clustering }
\description{
  Multiple Random fuzzy-k-means clusterings are computed using random projections of data.
The crisp clustering is obtained by defuzzyfication via the nearest crisp clustering: each example is assigned to the
cluster for which it has the largest membership. The base fuzzy algorithm used is \code{fanny} of the \code{cluster}
package.
It assumes that the label of the examples are integers starting from 1 to ncol(M).
Several randomized maps may be used: RS, PMO, Normal and Achlioptas random projections
}
\usage{
Multiple.Random.fuzzy.kmeans(M, dim, pmethod = "PMO", c = 3, n = 50, 
                             scale = TRUE, seed = -1, distance = "euclidean")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M}{ matrix of data: rows are variables and columns are examples }
  \item{dim}{ subspace dimension }
  \item{pmethod}{ projection method. It must be one of the following: 
"RS" (random subspace projection)
"PMO" (Plus Minus One random projection)
"Norm" (normal random projection)
"Achlioptas" (Achlioptas random projection) }
  \item{c}{ number of clusters }
  \item{n}{ number of RS projections }
  \item{scale}{ if TRUE randomized projections are scaled (default) }
  \item{seed}{  numerical seed for the random generator }
  \item{distance}{ it must be one of the two: "euclidean" (default) or "pearson" (that is 1 - Pearson correlation) }
}

\value{
  a list  of the n clusterings. Each clustering is a list of vectors,
	and each vector represents a single cluster. The elements of the vectors are integers that corresponds to the number
	of the columns (examples) of the matrix M of the data. 
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
# Multiple (20) fuzzy-k-means clusterings using Normal projections. 
M <- generate.sample0(n=10, m=2, sigma=1, dim=800)
l.norm <- Multiple.Random.fuzzy.kmeans (M, dim=100, pmethod="Norm", c=3, n=20)
# The same as above, using Random Subspace projections.
l.RS <-  Multiple.Random.fuzzy.kmeans (M, dim=100, pmethod="RS", c=3,  n=20)
# The same as above, using PMO projections, but with the number of clusters set to 5
l.RS.PMO <-  Multiple.Random.fuzzy.kmeans (M, dim=100, pmethod="PMO", c=5, n=20)
}
\keyword{ cluster }
