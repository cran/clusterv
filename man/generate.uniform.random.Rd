\name{generate.uniform.random}
\alias{generate.uniform.random}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Uniform bidimensional random data generator. }
\description{
  Data are generated according to a uniform bidimensional random distribution. 
}
\usage{
generate.uniform.random(n = 100, range = c(0, 1))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ number of examples  }
  \item{range}{ vector with 2 values: min and max random uniform values }
}

\value{
 a data matrix with examples in columns
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it} }

\examples{
generate.uniform.random()
# Generation of  bidimensional data randomly distributed
generate.uniform.random(n = 10, range = c(0, 1))
}
\keyword{datagen}
