\name{generate.sample.h3}
\alias{generate.sample.h3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Two-levels hierarchical cluster generator.}
\description{
  A 2-dimensional 2-levels hierarchical cluster structure is generated.
  At a first level 4 distinct clusters  are generated.
  At a second level two other clusters at the left and right of 2 of the 4 "primary" clusters are generated (6 clusters)
}
\usage{
generate.sample.h3(n = 20, DeltaA = 1, DeltaB = 1, seed = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ number of examples for each cluster }
  \item{DeltaA}{ vertical displacement of the the secondary clusters }
  \item{DeltaB}{ horizontal displacement of the the secondary clusters }
  \item{seed}{ seed for the random generator }
}

\value{
 a matrix with dim rows (variables) and n*6 columns (examples)
}
\author{ Giorgio Valentini \email{valentini@di.unimi.it} }

\examples{
generate.sample.h3()
# Generation of a data set with 120 2-dimensional examples
# data have a two-level hierarchical structure with respectively 4 and 6 clusters. 
generate.sample.h3(n = 20, DeltaA = 1, DeltaB = 1, seed = 0)
}
\keyword{datagen}
