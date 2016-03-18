# Ssa.RefSeq.db

`Ssa.RefSeq.db` is an R package that provides annotations for the Atlantic
salmon genome [ICSASG_v2](http://www.ncbi.nlm.nih.gov/genome/annotation_euk/Salmo_salar/100/)

## Install/update Ssa.RefSeq.db

You can track (and contribute to) development of `Ssa.RefSeq.db` at `https://github.com/FabianGrammes/Ssa.RefSeq.db` To install it:

1. Install the release version of `devtools` from CRAN with `install.packages("devtools")`.

2. Install the release version of `RSQLite` from CRAN with `install.packages("RSQLite")`.

3. Install `Ssa.RefSeq.db` from github using:
```R
library(devtools)
install_github("FabianGrammes/Ssa.RefSeq.db")
```

## Tips

 1. Functions (quick description), R help pages are available for all functions (use `?get.genes` for help on the get.genes function). Almost all of the functions expect CIGENE interanl gene identifiers (like gene32277:100196482). 
	 * **get.genes**: Returns gene names and more
	 * **get.GO**: Returns Gene Ontlogy
	 * **get.gtf**: Returns position on the genome
	 * **get.id**: Links NCBI Ids to cigene gene ids
	  * **get.gtf**: Returns position on the genome
	 


---

## Annotation summary

---
### Gene names

All gene names and most of the gene realted information has been paresed out from the attribute field of the `.gff3` file. In total the package contains information for *81586*, of which ca. 50% are protein coding (see table below).

Gene biotype                      | Count
-------------------|------------
protein_coding | 48785
tRNA | 23654
lncRNA | 6387
pseudogene | 2433
V\_segment | 144
misc\_RNA | 124
C\_region | 38 
other | 21

---
## GO annotation

GO annotations were obtained by `blastp` the predicted protein sequences against the Swiss-Prot protein DB (using <cite>[Blast2GO][1]<cite> with the default settings). In case 
one gene had more than one transcript and thus more than one predicted protein sequence, only the longest protein sequence was used in `blastp`. The column: aa\_longest returned 
by the function `get.genes` indicates the protein ID of the protein sequence used for GO annotation. 


GO Term  | Number of genes annotated
--------|---------------------
Biological Process |	33994		
Molecular Function | 33831
Cellular component | 34837


---
## References

[1] Conesa, A., Gotz, S., Garcia-Gomez, J. M., Terol, J., Talon, M., &
Robles, M. (2005). Blast2GO: a universal tool for annotation,
visualization and analysis in functional genomics
research. Bioinformatics, 21(18), 3674–3676.

---
## Changelog

### v1.1

- added the get.id function

### v1.2

- cleaned the gene names
- added transcript length column to gene data
