get.int <-
function (chr, start, end, mode = 'inclusive') 
{
    if (!mode %in% c('inclusive','exclusive'))
        stop("ERROR: mode has to be set to: <inclusive> or <exclusive>")
    if (length(chr) > 1) 
        stop("ERROR: You can only look for one interavl at a time")
    chr = paste("('", chr, "')", sep = "")
    if (mode == 'inclusive') {
       query <- paste("SELECT
gen.gene_id,
gff.chrom,
gff.start,
gff.end,
gff.strand
FROM GENES gen\n
JOIN GFF gff ON gff.gene_id = gen.gene_id
WHERE gff.chrom IN", chr,
                      "GROUP BY gen.gene_id
                      HAVING start BETWEEN", 
                      start, "AND", end, "ORDER BY start", sep = " ")
   }
    else if (mode == 'exclusive') {
               query <- paste("
SELECT
gen.gene_id,
gff.chrom,
gff.start,
gff.end,
gff.strand
FROM GENES gen\n
JOIN GFF gff ON gff.gene_id = gen.gene_id
WHERE gff.chrom IN", chr,
                      "GROUP BY gen.gene_id
                      HAVING start >", 
                      start, "AND end <", end, "ORDER BY start", sep = " ")
        
    }
    dbGetQuery(.datacache$con, query)
}
