\name{random.component.selection}
\alias{random.component.selection}

\title{ Function to randomly select the indices of the variables selected by the random subspace projection }
\description{
  It is used by the function \code{\link{random.subspace}} to randomly select the indices of the variables used for the 
	random subspace projections. It randomly select a subset of the indices, that is a set of positive integers that
	correspond to the selected variables
}
\usage{
random.component.selection(d = 2, d.original = 10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{d}{ subspace dimension }
  \item{d.original}{ dimension of the space from which components are randomly selected  }
}

\value{
  vector of the selected features: it contain the indices of the components randomly selected
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}


\seealso{ \code{\link{random.subspace}}}
\examples{
# it generates a vector of 2 elements whose components are randomly 
# chosen from 1..10
random.component.selection(d = 2, d.original = 10)
# it generates a vector of 10 elements whose components are randomly 
# chosen from 1..1000
random.component.selection(d = 10, d.original = 1000)
}
\keyword{misc}% at least one, from doc/KEYWORDS
