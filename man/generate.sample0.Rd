\name{generate.sample0}
\alias{generate.sample0}


\title{ Sample0 generator of synthetic data }
\description{
  Multivariate normally  distributed data synthetic generator.
	Data sets with 3 clusters are randomly generated.
  \emph{n} examples for each class are generated.
  All classes (each one of \emph{n} examples) has \emph{dim} components 
The first class (first \emph{n} examples) has its  components centered in  0 (of length \emph{dim})
The second class (second \emph{n} examples) has its   components centered in  \emph{m} (of length \emph{dim})
The third class (last \emph{n} examples) has its   components centered in \emph{-m} (of length \emph{dim})
For all classes the covariance matrix is diagonal with values \emph{sigma}.
}
\usage{
generate.sample0(n = 5, m = 10, sigma = 1, dim = 2)
}

\arguments{
  \item{n}{ number of examples for each class }
  \item{m}{  mean value for the second class }
  \item{sigma}{ value of the diagonal elements of the covariance matrix }
  \item{dim}{ dimension of the examples}
}

\value{
  a matrix with \emph{dim} rows (variables) and \emph{n}*3 columns (examples)
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

 
\examples{
generate.sample0()
# Generation of a data set with 60 500-dimensional examples, with the examples 
# of the first class  centered in the 500-dimensional 0 vector, the second class 
# is centered in the 1 vector, the third in -1. The covariance matrix is the
# matrix with all 2 values on the diagonal elements
generate.sample0(n = 20, m = 1, sigma = 2, dim = 500)
}
\keyword{datagen}
