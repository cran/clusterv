\name{generate.sample7}
\alias{generate.sample7}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Sample7 generator: multivariate normally  distributed data synthetic generator }
\description{
 \emph{n} examples for each from 6 classes are generated.
All classes (each one of n examples) has dim components 
The clusters have a hierarchical structure: 2 or 6 clusters may be detected.
Anyway note that the structure of the data depends on the parameters: two main clusters
are centered in m and -m. Around each main cluster two other subclusters are generated using
the displacement d.
}
\usage{
generate.sample7(n = 20, m = 10, dim = 1000, d = 3, s = 1)
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
generate.sample7()
# Generation of a data set with 60 100-dimensional examples
# data have a two-level hierarchical structure with respectively 2 and 6 clusters 
generate.sample7(n = 10, m = 10, dim = 100, d = 4, s = 0.4)
}
\keyword{datagen}
