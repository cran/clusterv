\name{generate.sample.h2}
\alias{generate.sample.h2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Three-level hierarchical cluster generator. }
\description{
  A 2-dimensional three-level hierarchical cluster structure is generated.
	At a first level 3 distinct clusters at the vertices of an equilater triangle are generated.
	At a second level two other clusters at the left and right of the three "primary" clusters are generated (6 clusters)
	At a third level two other clusters above and below the secondaty clusters are generated (12 clusters)
}
\usage{
generate.sample.h2(n = 20, l = 8, Delta.h = 2, Delta.v = 1, sd = 0.1, 
with.I.II.level.examples = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ number of examples for each cluster }
  \item{l}{ half length of the edge of the equilater triangle }
  \item{Delta.h}{ half of the "abscissa" distance between each pair of clusters inside the three major clusters }
  \item{Delta.v}{ half of the "ordinate" distance between each pair of clusters inside the three second order clusters }
  \item{sd}{ standard deviation }
  \item{with.I.II.level.examples}{ if TRUE data at the first and secondary level are generated (for a total of 21 clusters), otherwise only the third level}
}
\value{
  a matrix with dim rows (variables) and n*6 columns (examples)
}
\author{ Giorgio Valentini \email{valentini@di.unimi.it} }

\examples{
generate.sample.h2()
# Generation of a data set with 240 2-dimensional examples
# data have a three-level hierarchical structure with respectively 3 and 6 and 12 clusters. 
generate.sample.h2(n = 20, l = 10, Delta.h = 2, Delta.v = 1, sd = 0.05)
}
\keyword{datagen}
