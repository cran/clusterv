\name{generate.sample4}
\alias{generate.sample4}

\title{ Sample4 generator of synthetic data }
\description{
   Multivariate normally  distributed data synthetic generator.
	Data sets with 5 clusters are randomly generated.
  \emph{n} 6000-dimensional examples for each class are generated.
	All classes (each one of n examples) have 1000 no-noisy and 5000 noisy features but there is substantial overlapping 
between distributions underlying classes 1 and 2 and 1 and 3, while class 4 and 5 are separated.
The first class (first n examples) has its no noisy variables centered in 0.
The second class (second n examples) has its no noisy variables centered in 1. 
The third class (third n examples) has its no noisy variables centered in -1. 
The fourth class (fourth n examples) has its no noisy variables centered in 5.
The fifth class (fifth n examples) has its no noisy variables centered in -5.
The diagonal of the covariance matrix for all classes has its elements equal to sigma (first 1000 variables) and equal to
2*sigma (last 5000 variables).
	
}
\usage{
generate.sample4(n = 2, sigma = 1)
}

\arguments{
  \item{n}{ number of examples for each class }
  \item{sigma}{ standard deviation of the first 1000 variables. The remaining variables have 2*sigma standard deviation }
}

\value{
  a real data matrix with 1000 rows (variables) and n*5 columns (examples)
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
generate.sample4()
# Generation of a data set with 100 6000-dimensional examples
generate.sample4(n = 20, sigma = 1)
}
\keyword{datagen}
