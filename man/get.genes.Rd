\name{get.genes}
\alias{get.genes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mapping between gene IDs and gene names
}
\description{
Returns A.salmon gene names for gene_ids
}
\usage{
get.genes(x, mode = "short", transcripts = "longest", match = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a character vector of gene IDs f.eks: gene32277:100196482
}
  \item{mode}{
short/full (default = short) defines how much information you will get
}
  \item{transcripts}{
longest/all (default = longest) If you want information on all transcripts for
each gene or only the longest
}
  \item{match}{
  if TRUE the output will be in the same order as the input and 
  gene_ids without annotation will contain NA values. 
}
}

\examples{
get.genes( c('gene32277:100196482'), mode = 'full' )
}

