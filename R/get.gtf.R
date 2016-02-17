get.gtf <-
function (x){
    x = paste(x, sep = ", ", collapse = "', '")
    x = paste("('", x, "')", sep = "")
        query <- paste("
SELECT gff.gene_id, gff.chrom, gff.start, gff.end, gff.strand
FROM GFF gff
WHERE gff.gene_id IN", x, sep =" ")
    dbGetQuery(conn = .datacache$con, query)
}
