\name{Random.hclustering.validity}
\alias{Random.hclustering.validity}


\title{ Random hierarchical clustering and validity index computation using random projections of data.}
\description{
  This function applies a hierarchical clustering algorithm to the data and then computes stability indices for the
obtained cluster using multiple random subspace projections. 
The reliability of clusters discovered by a hierarchical clustering algorithm is assessed using randomized projections.
The validity indices for each individual cluster, the
overall validity index of the clustering and the AC indices are computed.
Different hierarchical clusterings may be used (e.g. average, complete and single linkage or the Ward's method) as
well as different randomized maps (e.g. PMO, Achlioptas, Normal, Random Subspace projections).
It assumes that the label of the examples are integer starting from 1 to ncol(M).
}
\usage{
Random.hclustering.validity(M, dim, pmethod = "RS", c = 3, hmethod = "average", 
                            n = 50, scale = TRUE, seed = 100, AC=TRUE, 
                            distance="euclidean")
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
  \item{hmethod}{ the agglomeration method to be used. This should be one of 
         "ward.D", "single", "complete", "average", "mcquitty", "median" or "centroid", 
				 according to the \code{hclust}
         method of the package \code{\link{stats}}. }
  \item{n}{ number of  random projections }
  \item{scale}{  if TRUE (default) the random projections are scaled }
  \item{seed}{ numerical seed for the random generator }
	\item{AC}{if TRUE (default) the AC indices are computed. }
	\item{distance}{it must be one of the two: "euclidean" (default) or "pearson" (that is 1 - Pearson correlation). }
}

\value{
  a list with eight components: "validity", "overall.validity", "similarity.matrix", "dim", 
  "cluster", "tree", "orig.tree", "orig.cluster":
  \item{validity }{a vector with the validity of each of the c clusters}
  \item{overall.validity }{validity index of the overall clustering}
	\item{similarity.matrix }{pairwise similarity matrix between examples}
  \item{dimension }{random projection dimension}
	\item{cluster }{list of the n clustering obtained by randomized hierarchical clustering}
  \item{tree }{list of the n trees obtained by the randomized hierarchical clustering}
	\item{orig.tree }{tree built  in the original space}
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
# by hierarchical clustering using RS projections. 
M <- generate.sample0(n=10, m=2, sigma=2, dim=800)
l<-Random.hclustering.validity(M, dim=30, pmethod = "RS", c = 3, 
                               hmethod = "average", n = 20)
# The same as above, but using PMO projections. 
l<-Random.hclustering.validity(M, dim=30, pmethod = "PMO", c = 3, 
                               hmethod = "average", n = 20)
# The same as above, but evaluating clusterings with 5 clusters 
l<-Random.hclustering.validity(M, dim=30, pmethod = "PMO", c = 5, 
                               hmethod = "average", n = 20)
# The same as above, but evaluating clusterings with 10 clusters 
l<-Random.hclustering.validity(M, dim=30, pmethod = "PMO", c = 10, 
                               hmethod = "average", n = 20)
# Assessment of the reliability of the clusters using projections 
# with limited distortion (max. 
# expansion lower than 1.3 according to the Johnson Lindenstrauss lemma)
d <- JL.predict.dim(n=30, epsilon=0.3)
l<-Random.hclustering.validity(M, dim=d, pmethod = "PMO", c = 3, 
                               hmethod = "average", n = 20)

}
\keyword{ cluster }
