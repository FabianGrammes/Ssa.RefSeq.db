\name{get.int}
\alias{get.int}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Returns all genes within a genomic interval
}
\description{
  The function returns the gene IDs of all genes within a given genomic interval. 
}
\usage{
get.int(chr, start, end, mode = 'inclusive')
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{chr}{
cromosome f.eks: ssa01
}
  \item{start}{
start of the genomic interval
}
  \item{end}{
end of the genomic interval
}
  \item{mode}{
inclusive/exclusive; inclusive is default. Exclusive will return only genes where both start and end fall into the defined interval.
}

}
\examples{
get.int( chr = 'ssa01', start = 1, end = 170000 )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
