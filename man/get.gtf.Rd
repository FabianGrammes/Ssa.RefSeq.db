\name{get.gtf}
\alias{get.gtf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Maps between gene IDs and genomic position
}
\description{
  Function that provides mapping between the gene IDs and the locations
  on the A.salmon (ICSASG_v2) genome.
}
\usage{
get.gtf(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a character vector of gene IDs f.eks: gene32277:100196482
}
}
\examples{
get.gtf( c('gene32277:100196482') )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
