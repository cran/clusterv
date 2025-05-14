\name{Do.similarity.matrix}
\alias{Do.similarity.matrix}
\alias{Do.similarity.matrix.partition}

\title{ Functions to compute a pairwise similarity matrix. }
\description{
  The elements of a similarity matrix represent the frequency by which each pair of examples belongs to the same 
	cluster across multiple clusterings.
	These functions may also be used  with clusterings with a variable number of clusters.
}
\usage{
Do.similarity.matrix(l, dim.Sim.M)

Do.similarity.matrix.partition(l)
}

\arguments{
  \item{l}{ list of clusterings. Each element is a list of clusters. Each cluster is a vector whose elements (integers)
	represent the examples}
  \item{dim.Sim.M}{ dimension of the similarity matrix (number of examples) }
}
\details{
 A \eqn{n \times n} similarity matrix M to a k-clustering; the elements \eqn{M_{ij}} of M are
defined as:
\deqn{
M_{ij} = \sum_{s=1}^k \chi_{A_s}[i] \cdot \chi_{A_s}[j]
}
where \eqn{i,j \in \{1,2,\ldots,n\}}, and \eqn{\chi_{A_s} \in \{0,1\}^n} is the characteristic vector of 
\eqn{A_s \subseteq \{1,2,\ldots,n\}},
i.e. \eqn{\chi_{A_s}[i] = 1} if \eqn{i \in A_s}, otherwise \eqn{\chi_{A_s}[i] = 0}.
If the k-clustering identifies a partition, \eqn{M_{ij} \in \{0,1\}}: in other words, \eqn{M_{ij}} denotes if elements 
i and j belong to the same cluster. 
Consider also a  random projection \eqn{\mu : \mathcal{R}^d \rightarrow \mathcal{R}^{d'}}.
Then a  similarity matrix M can be computed averaging among multiple clusterings obtained from multiple random
projections. This similarity matrix represents how much pairs of projected examples  belong to the
same cluster averaging across the  repeated random projections.
\code{Do.similarity.matrix} can be used with clusterings that do not strictly define a partition (that is a specific
example may belong to more than 1 cluster). \code{Do.similarity.matrix.partition} may be used only with clusterings that
strictly define a partition.
}
\value{
  A pairwise similarity matrix whose elements represents how much 2 examples fall in the same cluster across multiple 
  clusterings. Each element of the matrix is normalized so that its value is beween 0 and 1.
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
# Computing the similarity matrix associated to 20 hierarchical clusterings 
# using Normal projections. 
M <- generate.sample0(n=10, m=2, sigma=2, dim=800)
l.norm <- Multiple.Random.hclustering (M, dim=100, pmethod="Norm", c=3, 
                                       hmethod="average", n=20)
Sim <- Do.similarity.matrix.partition(l.norm);
# The same as above, but with 30 hierarchical clusterings using PMO projections. 
l.PMO <- Multiple.Random.hclustering (M, dim=100, pmethod="PMO", c=3, 
                                      hmethod="average", n=30)
Sim.PMO <- Do.similarity.matrix.partition(l.norm);
}
\keyword{ cluster}
