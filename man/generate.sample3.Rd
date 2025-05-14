\name{generate.sample3}
\alias{generate.sample3}

\title{ Sample3 generator of synthetic data}
\description{
   Multivariate normally  distributed data synthetic generator.
	Data sets with 3 clusters are randomly generated.
  \emph{n} examples for each class are generated.
	n 1000-dimensional examples for each class are generated.
All classes (each one of n examples) has 300 no-noisy features and 700 noisy features. There is a certain overlap 
between classes and a full covariance matrix (equal for all classes is used).
The first class (first n examples) has its no-noisy features centered in 0.
The second class (second n examples) has its no-noisy features centered in m 
The third class (last n examples) has its no-noisy features centered in -m 
Covariance matrix Sigma = (B, Zero; Zero', I) where B is a 300X300 matrix s.t. B[i,i]=1, B[i,i+1]=B[i,i-1]=0.5 and
B[i,j]=0.1 j!=i-1,i,i+1; Zero is  a 300X700 zero matrix and Zero' its transpose; I is a 700X700 identity matrix.
}
\usage{
generate.sample3(n = 2, m = 2)
}

\arguments{
  \item{n}{ number of examples for each class }
  \item{m}{ vector center of the second class }
}

\value{
  a matrix with 1000 rows (variables) and n*3 columns (examples)
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
\donttest{
generate.sample3()
# Generation of a data set with 60 1000-dimensional examples, 
# with the examples of the first class  centered in the 1000-dimensional 
# 0 vector, the second class is centered in the 1 vector, the third in -1. 
generate.sample3(n = 20, m = 1)
}
}

\keyword{datagen}
