\name{get.id}
\alias{get.id}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ID cross linking function
}
\description{
  Provides cross linking between NCBI: locus IDs,protein IDs, transcripts IDs and cigene interant gene IDs.
  Using '*' as query will return the whole table.
}
\usage{
(x, id.type = "locus")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{x}{ 
A character vector of NCBI IDs:  
}
  \item{id.type}{
Specifies what kind of NCBI IDs are supplied: locus/protein/transcript (default = locus)
}

}
\examples{
get.id('LOC106560212')
get.id('atp5s')
get.id('XM_014195060.1', id.type = 'transcript')

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
