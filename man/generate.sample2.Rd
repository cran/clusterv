\name{generate.sample2}
\alias{generate.sample2}


\title{Sample2 generator of synthetic data }
\description{
  Multivariate normally  distributed data synthetic generator.
	Data sets with 2 clusters are randomly generated.
  \emph{n} examples for each class are generated.
	n 10000-dimensional examples for each class are generated.
 All classes (each one of n examples) has only no-noisy features but there is substantial overlapping between classes
 The first class (first n examples) has its features centered in 1 (first 5000 features) and 2 (last 5000 features)
 The second class (second n examples) has its features centered in -1 (first 5000 features) and -2 (last 5000 features)
 The diagonal of the covariance matrix of the first class has its first 2500 element equal to 0.5, the next 2500 equal to 1,
 the next 2500 to 0.5 and the last to 1.
 The diagonal of the covariance matrix of the second class has its first 5000 element equal to 1, the next 5000 equal to 2

}
\usage{
generate.sample2(n = 2)
}

\arguments{
  \item{n}{ number of examples for each class }
}

\value{
  a real data matrix with 10000 rows (variables) and n*2 columns (examples)
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}



\examples{
\donttest{generate.sample2()}
\donttest{generate.sample2(n = 20)}
}
\keyword{datagen}
