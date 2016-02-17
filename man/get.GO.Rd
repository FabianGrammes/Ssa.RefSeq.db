\name{get.GO}
\alias{get.GO}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Maps between gene IDs and Gene Ontology (GO) IDs
}
\description{
  Function that provides mapping between A.salmon gene IDs and the GO
  identifiers that are directly associated with. This mapping contains
  only the most specific terms (the child terms)!
}
\usage{
get.GO(x, TERM = "BP")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    a character vector of gene IDs f.eks: CIGSSA_004842. You can also
    use "*" to fetch all (all gene IDs) GO mappings (for that TERM).
}
  \item{TERM}{
    The TERM element indicates which of the three Gene Ontology categories
    the GO identifier belongs to. The categories are biological process
    (BP), cellular component (CC), and molecular function (MF). Default is
    BP.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\examples{
get.GO( c('gene32277:100196482') )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
