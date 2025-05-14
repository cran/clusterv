\name{generate.sample.h1}
\alias{generate.sample.h1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Two-levels hierarchical cluster generator. }
\description{
A 2-dimensional two-level hierarchical cluster structure is generated.
At a first level 3 distinct clusters at the vertices of an equilater triangle are generated.
At a second level two other clusters at the left and right of the three "primary" clusters are generated.
}
\usage{
generate.sample.h1(n = 20, l = 5, Delta.h = 1, sd = 0.1, with.I.level.examples = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{  number of examples for each cluster}
  \item{l}{ half length of the edge of the equilater triangle }
  \item{Delta.h}{  half of the "abscissa" distance between each pair of clusters inside the three major clusters }
  \item{sd}{ standard deviation }
  \item{with.I.level.examples}{ if TRUE data centered at the vertices of the triangle are generated, otherwise only the secondary clusters are generated. }
}

\value{
 a matrix with dim rows (variables) and n*6 columns (examples)
}
\author{ Giorgio Valentini \email{valentini@di.unimi.it} }

\examples{
generate.sample.h1()
# Generation of a data set with 120 2-dimensional examples
# data have a two-level hierarchical structure with respectively 3 and 6 clusters. 
generate.sample.h1(n = 20, l = 5, Delta.h = 1, sd = 0.1, with.I.level.examples = TRUE)
}
\keyword{datagen}
