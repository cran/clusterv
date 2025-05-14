\name{Validity.indices}
\alias{Validity.indices}

\title{ Function to compute the validity index  of each cluster.}
\description{
  It computes the validity index (e.g. the stability index) for each individual cluster.
  This function is  called by \code{Cluster.validity} and \code{Cluster.validity.from.similarity}
}
\usage{
Validity.indices(cluster, c, Sim.M)
}

\arguments{
  \item{cluster}{ list of clusters representing a clustering in the original space. Each element of the list is a  
          vector whose elements are the examples belonging to the cluster. }
  \item{c}{ number of clusters }
  \item{Sim.M}{ the pairwise similarity matrix }
}
\details{
Using the  similarity matrix M, 
the \emph{stability index} s for a cluster A is:
\deqn{
s(A) = \frac{1}{|A|(|A|-1)} \sum_{(i,j) \in A \times A, i\neq j} M_{ij}
}
The index \eqn{s(A)} estimates the stability of a cluster \eqn{A} by measuring how much  the projections 
of the pairs \eqn{(i,j) \in A \times A} occur together in the same cluster in the projected subspaces. 
The stability index has values between 0 and 1: low values indicate no reliable clusters,
high values denote stable clusters. 
}
\value{
  vector of the validity indices. Each element corresponds to validity index of each cluster.
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\seealso{ \code{\link{Cluster.validity}},  \code{\link{Cluster.validity.from.similarity}},
           \code{\link{Do.similarity.matrix.partition}}, \code{\link{Do.similarity.matrix}}}
\examples{
# Computation of the stability indices found out by a hierarchical clustering algorithm 
M <- generate.sample0(n=10, m=2, sigma=2, dim=800)
d <- dist (t(M)); 
tree <- hclust(d, method = "average");
plot(tree, main="");
cl.orig <- rect.hclust(tree, k = 3);
l.norm <- Multiple.Random.hclustering (M, dim=100, pmethod="Norm", 
                                       c=3, hmethod="average", n=20)
Sim <- Do.similarity.matrix.partition(l.norm);
val.indices <- Validity.indices(cl.orig, c=3, Sim)
}
\keyword{cluster }
