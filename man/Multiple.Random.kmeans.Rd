\name{Multiple.Random.kmeans}
\alias{Multiple.Random.kmeans}

\title{ Multiple Random k-means clustering }
\description{
  Multiple Random k-means clusterings are computed using random projections of data.
It assumes that the label of the examples are integers starting from 1 to ncol(M).
Several randomized maps may be used: RS, PMO, Normal and Achlioptas random projections
}
\usage{
Multiple.Random.kmeans(M, dim, pmethod = "PMO", c = 3, n = 50, it.max = 1000, 
                       scale = TRUE, seed = 100)
}

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
  \item{it.max}{ maximum number of iteration of the k-means algorithm (default 1000) }
  \item{scale}{ if TRUE randomized projections are scaled (default) }
  \item{seed}{  numerical seed for the random generator }
}

\value{
  a list  of the n clusterings. Each clustering is a list of vectors,
	and each vector represents a single cluster. The elements of the vectors are integers that corresponds to the number
	of the columns (examples) of the matrix M of the data. 
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
# Multiple (20) k-means clusterings using Normal projections. 
M <- generate.sample0(n=10, m=2, sigma=2, dim=800)
l.norm <- Multiple.Random.kmeans (M, dim=100, pmethod="Norm", c=3, n=20)
# The same as above, using Random Subspace projections.
l.RS <-  Multiple.Random.kmeans (M, dim=100, pmethod="RS", c=3,  n=20)
# The same as above, using PMO projections, but with the number of clusters set to 5
l.RS.PMO <-  Multiple.Random.kmeans (M, dim=100, pmethod="PMO", c=5, n=20)
}
\keyword{ cluster }
