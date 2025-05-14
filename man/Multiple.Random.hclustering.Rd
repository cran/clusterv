\name{Multiple.Random.hclustering}
\alias{Multiple.Random.hclustering}

\title{ Multiple Random hierarchical clustering}
\description{
 Multiple Random hierarchical clusterings are computed using random projections of data.
It assumes that the label of the examples are integers starting from 1 to ncol(M).
Several randomized maps may be used: RS, PMO, Normal and Achlioptas random projections.
}
\usage{
Multiple.Random.hclustering(M, dim, pmethod = "RS", c = 3, hmethod = "average", 
                            n = 50, scale = TRUE, seed = 100, distance="euclidean")
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
  \item{hmethod}{ the agglomeration method to be used. This should be one of 
         "ward.D", "single", "complete", "average", "mcquitty", "median" or "centroid", 
				 according to the \code{hclust}
         method of the package \code{\link{stats}}. }
  \item{n}{ number of  random projections }
  \item{scale}{  if TRUE (default) the random projections are scaled }
  \item{seed}{ numerical seed for the random generator }
	\item{distance}{ it must be one of the two: "euclidean" (default) or "pearson" (that is 1 - Pearson correlation) }
}

\value{
  a list  of the n clusterings obtained by randomized hierarchical clustering. Each clustering is a list vector,
	and each vector represents a single cluster. The elements of the vectors are integers that corresponds to the number
	of the columns (examples) of the matrix M of the data. 
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}


\seealso{ \code{\link{Achlioptas.random.projection}}, \code{\link{Plus.Minus.One.random.projection}},
 
          \code{\link{norm.random.projection}},\code{\link{random.subspace}}}
\examples{
\donttest{
# Multiple (20) hierarchical clusterings using Normal projections. 
M <- generate.sample0(n=10, m=2, sigma=2, dim=800)
l.norm <- Multiple.Random.hclustering (M, dim=100, pmethod="Norm", 
                                       c=3, hmethod="average", n=20)
# The same as above, using Random Subspace projections.
l.RS <-  Multiple.Random.hclustering (M, dim=100, pmethod="RS", c=3, 
                                      hmethod="average", n=20)
# The same as above, using PMO projections, but with the number of clusters set to 5
l.RS <-  Multiple.Random.hclustering (M, dim=100, pmethod="PMO", c=5, 
                                      hmethod="average", n=20)
# The same as above, using the single linkage method
l.RS.single <-  Multiple.Random.hclustering (M, dim=100, pmethod="PMO", 
                                             c=5, hmethod="single", n=20)
}
}
\keyword{ cluster }
