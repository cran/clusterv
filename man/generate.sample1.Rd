\name{generate.sample1}
\alias{generate.sample1}


\title{ Sample1 generator of synthetic data}
\description{
  Multivariate normally  distributed data synthetic generator.
	Data sets with 3 clusters are randomly generated.
  \emph{n} examples for each class are generated.
	All classes (each one of n examples) have their last dim-500 variables centered in 0.
The first class (first n examples) has its first 500  features centered in 0.
The second class (second n examples) has its first 500 features centered in  m.
The third class (last n examples) has its first 500 features centered in  -m.
For all classes the covariance matrix is diagonal with all values on the diagonal equal to sigma. 
}
\usage{
generate.sample1(n = 2, m = 6, sigma = 1, dim = 10000)
}

\arguments{
  \item{n}{ number of examples for each class }
  \item{m}{ center of the first 500 variables of the second class }
  \item{sigma}{ value of the diagonal elements of the covariance matrix  }
  \item{dim}{ number of variables (features) }
}

\value{
  a matrix with dim rows (variables) and n*3 columns (examples)
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{

generate.sample1()
# Generation of a data set with 30 1000-dimensional examples, with the examples 
# of the first class  centered in 0 for the first 500 variables, the second class 
# is centered in 1 for the first 500 variables, the third in -1.  
# The covariance matrix is the matrix with all  values different from 0 (equal to 3)
# on the diagonal elements.
generate.sample1(n = 10, m = 1, sigma = 3, dim = 1000)

}
\keyword{datagen}
