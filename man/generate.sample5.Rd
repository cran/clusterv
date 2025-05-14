\name{generate.sample5}
\alias{generate.sample5}


\title{ Sample5 generator of synthetic data}
\description{
  Multivariate normally  distributed data synthetic generator.
Data sets with 4 clusters are randomly generated.
\emph{n} examples for each class are generated.
All classes (each one with n examples) has (1-ratio.noisy)*dim of no-noisy features and ratio.noisy*dim of noisy
features. For "noisy" feature we mean features that are equally distributed in all the classes (these variables are
centered in 0), while for "no-noisy" we mean features that are  centered
in different points in the different classes. 
Note that if the number on no-noisy feature is less than 2 the generation is aborted.
A full covariance matrix (equal for all classes) is used.
The first class (first n examples) has its no-noisy features centered in 0.
The second class (second n examples) has its no-noisy features centered in m 
The third class (third n examples) has its no-noisy features centered in -m 
A fourth cluster (third n examples) has its no-noisy features centered in (m,-m) alternatively
Covariance matrix Sigma = (B, Zero; Zero', I) where B is a (dim*(1-ratio.noisy))X(dim*(1-ratio.noisy)) matrix s.t. 
B[i,i]=1, B[i,i+1]=B[i,i-1]=0.5 and
B[i,j]=0.1 if j!=i-1,i,i+1; Zero is  a (dim*(1-ratio.noisy))X(dim*ratio.noisy) zero matrix and Zero' its transpose; 
I is a (dim*ratio.noisy)X(dim*ratio.noisy) identity matrix
}
\usage{
generate.sample5(n = 10, dim = 10, ratio.noisy = 0.8, m = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ number of examples for each class }
  \item{dim}{ dimension of the examples  }
  \item{ratio.noisy}{  ratio of the noisy variables. The number of "noisy" features is  ratio.noisy * dim}
  \item{m}{ center of the II cluster (the third has center -m) }
}

\value{
  a matrix with dim rows (variables) and n*4 columns (examples)
}

\author{ Giorgio Valentini \email{valentini@di.unimi.it}}

\examples{
\donttest{
generate.sample5()
# Generation of a data set with 80 1000-dimensional examples, with the 200 no-noisy 
# features of the examples of the first class  centered in 0, the 200 no-noisy features 
# of the examples of the second class  centered in 2, the 200 no-noisy features of 
# the examples of the third class  centered in -2, and the 200 no-noisy features of the 
# examples of the fourth class  centered in alternatively in (2,-2).
generate.sample5(n = 20, m = 2, ratio.noisy = 0.8, dim = 1000)
}
}
\keyword{datagen}

