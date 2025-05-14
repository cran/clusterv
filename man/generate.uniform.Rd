\name{generate.uniform}
\alias{generate.uniform}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Uniform bidimensional  data generator }
\description{
 Data are generated according to a bidimensional grid with equispatiated data.
}
\usage{
generate.uniform(n = 11, range = c(0, 1))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ square root of the number of examples   }
  \item{range}{ vector with 2 values: min and max  coordinates of the bidimensional grid }
}

\value{
 a data matrix with examples in columns
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it} }

\examples{
generate.uniform()
# Generation of a bidimensional grid with 100 examples
generate.uniform(n = 10, range = c(0, 1))
}
\keyword{datagen}
