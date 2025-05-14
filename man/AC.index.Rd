\name{AC.index}
\alias{AC.index}


\title{ Assignment Confidence (AC) index }
\description{
  Assignment confidence index computation.
 For a given clustering and similarity matrix, the set of AC indices are computed (for each cluster and each example)
 It assumes that the label of the examples are integers.
}
\usage{
AC.index(cluster, c, Sim.M)
}

\arguments{
  \item{cluster}{ list of the  clusters whose validity indices will be computed }
  \item{c}{ number of clusters }
  \item{Sim.M}{ similarity matrix }
}
\details{
  The \emph{Assignment-Confidence (AC)} index estimates the confidence of the assignment of an example i to a cluster 
	A using a similarity matrix M:
\deqn{
AC(i,A) = \frac{1}{|A|-1} \sum_{j \in A, j\neq i} M_{ij}
}
Using a set of realizations of a given randomized projection, the  \emph{AC}-index represents the frequency by 
which i appears with the other  elements of the cluster A. 
}
\value{
  matrix with the Assignment Confidence index for each example. Each row corresponds to an example, 
  each column to a cluster.
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\seealso{ \code{\link{Validity.indices}}, \code{\link{Cluster.validity}}, \code{\link{Cluster.validity.from.similarity}},

           \code{\link{Do.similarity.matrix.partition}}, \code{\link{Do.similarity.matrix}}}
\examples{
# Computation of the AC indices of a hierarchical clustering algorithm 
M <- generate.sample0(n=10, m=2, sigma=2, dim=800)
d <- dist (t(M)); 
tree <- hclust(d, method = "average");
plot(tree, main="");
cl.orig <- rect.hclust(tree, k = 3);
l.norm <- Multiple.Random.hclustering (M, dim=100, pmethod="Norm", 
                                       c=3, hmethod="average", n=20)
Sim <- Do.similarity.matrix.partition(l.norm);
ac <- AC.index(cl.orig, c=3, Sim)
}
\keyword{ cluster }
