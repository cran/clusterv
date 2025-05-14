\name{Random.PAM.validity}
\alias{Random.PAM.validity}


\title{ PAM clustering and validity indices computation using random projections of data}
\description{
 This function applies the Prediction Around Medoids (PAM) clustering algorithm to the data and then computes 
stability indices for the obtained cluster using multiple random subspace projections. 
It computes the validity indices for each cluster found in the original space, the overall validity index for the
clustering and (optionally) the set of the AC indices.
Different randomized maps (e.g. PMO, Achlioptas, Normal, Random Subspace projections) may be applied.
It assumes that the label of the examples are integer starting from 1 to ncol(M).
The \code{pam} function of the package \code{cluster} is used as implementation of the base PAM algorithm.
}
\usage{
Random.PAM.validity(M, dim, pmethod = "PMO", c = 3, n = 50, scale = TRUE, 
                    seed = -1, AC = TRUE, distance = "euclidean")
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
  \item{n}{ number of  random projections }
  \item{scale}{  if TRUE (default) the random projections are scaled }
  \item{seed}{ numerical seed for the random generator }
	\item{AC}{if TRUE (default) the AC indices are computed. }
  \item{distance}{ it must be one of the two: "euclidean" (default) or "pearson" (that is 1 - Pearson correlation) }
}

\value{
  a list with esixight components: "validity", "overall.validity", "similarity.matrix", "dim", 
  "cluster",  "orig.cluster":
  \item{validity }{a vector with the validity of each of the c clusters}
  \item{overall.validity }{validity index of the overall clustering}
	\item{similarity.matrix }{pairwise similarity matrix between examples}
  \item{dimension }{random projection dimension}
	\item{cluster }{is the list of the n clustering obtained by multiple PAM clustering on the projected subspace}
  \item{orig.cluster }{list of the clusters in the original space}
	\item{AC }{matrix with the Assignment Confidence index for each example. Each row corresponds to an example, 
             each column to a cluster (optional)}
}
\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\seealso{ \code{\link{Achlioptas.random.projection}}, \code{\link{Plus.Minus.One.random.projection}}, 

             \code{\link{norm.random.projection}},\code{\link{random.subspace}},
						 
						 \code{\link{Cluster.validity}}, \code{\link{Validity.indices}}, \code{\link{AC.index}}}
\examples{
# Assessment of the reliability of clusters discovered 
# by fuzzy k-means using RS projections. 
M <- generate.sample0(n=10, m=2, sigma=1, dim=800)
l<-Random.PAM.validity(M, dim=30, pmethod = "RS", c = 3,  n = 20)
# The same as above, but using PMO projections. 
l<-Random.PAM.validity(M, dim=30, pmethod = "PMO", c = 3, n = 20)
# The same as above, but evaluating clusterings with 5 clusters 
l<-Random.PAM.validity(M, dim=30, pmethod = "PMO", c = 5, n = 20)
# The same as above, but evaluating clusterings with 10 clusters 
l<-Random.PAM.validity(M, dim=30, pmethod = "PMO", c = 10, n = 20)
# Assessment of the reliability of the clusters 
# using projections with limited distortion (max. 
# expansion lower than 1.3 according to the Johnson Lindenstrauss lemma)
d <- JL.predict.dim(n=30, epsilon=0.3)
l<-Random.PAM.validity(M, dim=d, pmethod = "PMO", c = 3, n = 20)

}
\keyword{ cluster }
