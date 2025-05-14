\name{Transform.vector.to.list}
\alias{Transform.vector.to.list}

\title{ Vector to list transformation of cluster representation }
\description{
  It transforms  a clustering from a vector representation to a list representation.
It accepts as input a vector that represents a clustering; the indices of the vectors refer to the examples and their
integer content to the number of the cluster they belong. The function returns a list that represents the same
clustering; each element of the list is a vector representing the cluster. The elements of the vectors are the indices
of the examples (that is they correspond to the indices of the vector representation of the clustering).
This list representation of the cluster may be used to compute the validity indices of the clustering.
}
\usage{
Transform.vector.to.list(v)
}

\arguments{
  \item{v}{ vector representing the clustering }
}

\value{
  a list  that represents the clustering; each element is a vector representing a single cluster.
}


\examples{
library(cluster);
# transforming a clustering vector obtained with PAM to a clustering list
M <- generate.sample0(n=10, m=2, sigma=1, dim=500)
clustering.vector <- pam (t(M),3,cluster.only=TRUE);	
clustering.list <- Transform.vector.to.list(clustering.vector);
# transforming a clustering vector obtained with kmeans to a clustering list
r<-kmeans(t(M), 3, 100);
clustering.list.kmeans <- Transform.vector.to.list(r$cluster);
}
\keyword{ cluster }
