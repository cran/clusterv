\name{Generate.clusters}
\alias{Generate.clusters}

\title{ Multiple clusterings generation from the corresponding trees }
\description{
  Multiple clusterings generation from the corresponding trees for a given cut (number of clusters).
}
\usage{
Generate.clusters(tr, c = 3)
}

\arguments{
  \item{tr}{ a list  of trees as returned by the hclust algorithm }
  \item{c}{ number of clusters }
}

\value{
  A list  of lists.
	Each list represents a clustering. Each cluster is a list of vectors, whose elements are the labels of the examples.
 
}

\seealso{  \code{\link{Achlioptas.hclustering.tree}},  \code{\link{PMO.hclustering.tree}},

            \code{\link{Norm.hclustering.tree}},\code{\link{RS.hclustering.tree}} }
\examples{
# list of clusterings generated using Achlioptas random projections, 
# using cuts corresponding to 3, 4 and 10 clusters
M <- generate.sample0(n=10, m=2, sigma=1, dim=800)
list.trees <- Achlioptas.hclustering.tree(M, dim=100, hmethod = "average", 
                                          n = 20, scale = TRUE)
list.clusters3 <- Generate.clusters(list.trees, c = 3)
list.clusters4 <- Generate.clusters(list.trees, c = 4)
list.clusters10 <- Generate.clusters(list.trees, c = 10)
}
\keyword{ cluster}
