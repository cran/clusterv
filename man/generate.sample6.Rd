\name{generate.sample6}
\alias{generate.sample6}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Sample6 generator: multivariate normally  distributed data synthetic generator}
\description{
 \emph{n} examples for each from 6 classes are generated.
All classes (each one of n examples) has dim components 
The clusters have a hierarchical structure: 2 or 6 clusters may be detected.
Anyway note that the structure of the data depends on the parameters: two main clusters
are centered in m and -m. Around each main cluster three other subclusters are generated using
the displacement d.
}
\usage{
generate.sample6(n = 20, m = 10, dim = 2, d = 3, s = 0.2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ number of examples for each class }
  \item{m}{ mean basic value  }
  \item{dim}{ amount of the displacement from m }
  \item{d}{ dimension of the examples }
  \item{s}{ value of the diagonal elements of the covariance matrix }
}

\value{
  a matrix with dim rows (variables) and n*6 columns (examples)
}
\author{ Giorgio Valentini \email{valentini@di.unimi.it} }

\examples{
generate.sample6()
# Generation of a data set with 120 200-dimensional examples
# data have a two-level hierarchical structure with respectively 2 and 6 clusters 
generate.sample6(n = 20, m = 10, dim = 200, d = 3, s = 1)
}
\keyword{datagen}
