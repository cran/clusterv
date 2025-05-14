\name{rand.norm}
\alias{rand.norm.generate}
\alias{rand.norm.generate.full}

\title{ Random generation of normal distributed data}
\description{
  Random generation of a matrix of n columns with with diagonal covariance matrix (rand.norm.generate)
	or with full covariance matrix (rand.norm.generate.full). These functions are used by \code{generate.sampleN}
	functions \eqn{0 \leq N \leq 5} to generate the data.
}
\usage{
rand.norm.generate(n = 5, mean = 0, sd = 1)
rand.norm.generate.full(n = 5, mean = c(0, 0), 
                        Sigma = matrix(c(0.1, 0, 0, 0.1), 2, 2))
}
\arguments{
 
  \item{n}{ number of samples to be generated }
  \item{mean}{ vector of means }
  \item{sd}{ vector of standard deviations }
  \item{Sigma}{ Covariance matrix  }
}
\value{
  a matrix of n columns with length(mean) rows. 
	With rand.norm.generate Row[i] has mean mean[i] and standard deviation sd[i].
	With rand.norm.generate.full Row[i] has mean mean[i]
}


\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\seealso{ \code{\link{generate.sample0}}, \code{\link{generate.sample1}}, \code{\link{generate.sample2}}

           \code{\link{generate.sample3}}, \code{\link{generate.sample4}}, \code{\link{generate.sample5}} }
\examples{
library(MASS)
rand.norm.generate(n = 10)
rand.norm.generate(n = 10, mean = c(0,1,2), sd = c(1,1,5))
rand.norm.generate.full()
rand.norm.generate.full(n = 10, mean = c(0, 0, 2), 
                        Sigma = matrix(seq(1,1.8, by=0.1), 3, 3))
}

\keyword{datagen}

