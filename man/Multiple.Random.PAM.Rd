\name{Multiple.Random.PAM}
\alias{Multiple.Random.PAM}

\title{ Multiple Random PAM clustering }
\description{
  Multiple Random Partition Around Medoids (PAM) clusterings are computed using random projections of data.
The \code{pam} function of the package \code{cluster} is used as implementation of the base PAM algorithm.
It assumes that the label of the examples are integers starting from 1 to ncol(M).
Several randomized maps may be used: RS, PMO, Normal and Achlioptas random projections.
}
\usage{
Multiple.Random.PAM(M, dim, pmethod = "PMO", c = 3, n = 50, scale = TRUE, 
                    seed = -1, distance = "euclidean")
}

\arguments{
   \item{M}{ matrix of data: rows are variables and columns are examples }
  \item{dim}{ subspace dimension }
  \item{pmethod}{ projection method. It must be one of the following: 
"RS" (random subspace projection)
"PMO" (Plus Minus One random projection)
"Norm" (normal random projection)
"Achlioptas" (Achlioptas random projection) }
  \item{c}{ number of clusters }
  \item{n}{ number of RS projections }
  \item{scale}{ if TRUE randomized projections are scaled (default) }
  \item{seed}{  numerical seed for the random generator }
  \item{distance}{ it must be one of the two: "euclidean" (default) or "pearson" (that is 1 - Pearson correlation) }

}

\value{
  a list  of the n clusterings obtained by the PAM algorithm clustering. Each clustering is a list of vectors,
	and each vector represents a single cluster. The elements of the vectors are integers that corresponds to the number
	of the columns (examples) of the matrix M of the data. 
}
\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
# Multiple (20) PAM clusterings using Normal projections. 
M <- generate.sample0(n=10, m=2, sigma=2, dim=800)
l.norm <- Multiple.Random.PAM (M, dim=100, pmethod="Norm", c=3, n=20)
# The same as above, using Random Subspace projections.
l.RS <-  Multiple.Random.PAM (M, dim=100, pmethod="RS", c=3,  n=20)
# The same as above, using PMO projections, but with the number of clusters set to 7
l.RS.PMO <-  Multiple.Random.PAM (M, dim=100, pmethod="PMO", c=7, n=20)
}
\keyword{ cluster }
