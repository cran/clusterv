\name{Cluster.validity}
\alias{Cluster.validity}
\alias{Cluster.validity.from.similarity}

\title{ Validity indices computation }
\description{
  It computes the stability indices for each individual cluster,
the overall validity index of the clustering and (optionally) the Assignment Confidence (AC) index for each example.
To compute the indices a set of clusterings is used.
It assumes that the label of the examples are integers. 
}
\usage{
Cluster.validity(cluster, M.clusters, AC = FALSE)

Cluster.validity.from.similarity(cluster, Sim.M, AC = TRUE)
}

\arguments{
  \item{cluster}{ list of the  clustering whose validity indices will be computed }
  \item{M.clusters}{ list of the n clusterings (a list of lists) used for validity index computation }
	\item{Sim.M}{ similarity matrix}
  \item{AC}{ if it is TRUE the Assignment Confidence index for each example is computed}
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

The \emph{overall validity} of the clustering is the average between the validity indices of the individual clusters.

The \emph{Assignment-Confidence (AC)} index estimates the confidence of the assignment of an example i to a cluster 
	A using a similarity matrix M:
\deqn{
AC(i,A) = \frac{1}{|A|-1} \sum_{j \in A, j\neq i} M_{ij}
}
Using a set of realizations of a given randomized projection, the  \emph{AC}-index represents the frequency by 
which i appears with the other  elements of the cluster A. 
}

\value{
  a list with four components: "validity", "overall.validity", "similarity.matrix", "AC" (optional):
  \item{validity }{vector with the validity of each of the clusters}
  \item{overall.validity }{validity index of the overall cluster}
	\item{similarity.matrix }{pairwise similarity matrix between examples}
	\item{AC }{matrix with the Assignment Confidence index for each example. Each row corresponds to an example, 
 each column to a cluster}
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\seealso{ \code{\link{Validity.indices}} \code{\link{AC.index}}, \code{\link{Do.similarity.matrix}}}
\examples{
# Computation of the validity indices for a hierarchical clustering 
M <- generate.sample0(n=10, m=1, sigma=1, dim=1000)
d <- dist (t(M)); 
tree <- hclust(d, method = "average");
plot(tree, main="");
cl.orig <- rect.hclust(tree, k = 3);
l.PMO <- Multiple.Random.hclustering (M, dim=100, pmethod="PMO", 
                                      c=3, hmethod="average", n=20)
list.indices <- Cluster.validity(cl.orig, l.PMO, AC = TRUE)
# Computation of the validity indices for a hierarchical clustering 
# with less defined clusters
M.less <- generate.sample0(n=10, m=1, sigma=2, dim=1000)
d <- dist (t(M.less)); 
tree.less <- hclust(d, method = "average");
plot(tree.less, main="");
cl.orig.less <- rect.hclust(tree.less, k = 3);
l.PMO.less <- Multiple.Random.hclustering (M.less, dim=100, pmethod="PMO", 
                                           c=3, hmethod="average", n=20)
list.indices.less <- Cluster.validity(cl.orig.less, l.PMO.less, AC = TRUE)
}
\keyword{ cluster }
