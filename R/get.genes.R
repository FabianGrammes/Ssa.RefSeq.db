get.genes <-
function (x, mode = "short", transcripts="longest", match = FALSE){
    mode = paste(mode, transcripts, sep ='-')
    if(! mode %in% c('short-longest','full-longest','short-all','full-all' ) )
        stop('ERROR: mode-transcript combinations can only be: short-longest/full-longest/short-all/full-all')
    x2 = paste(x, sep = ", ", collapse = "', '")
    x2 = paste("('", x2, "')", sep = "")
    if (mode == "short-longest") {
        query <- paste("
SELECT
gen.gene_id, gen.protein_id, gen.gene, gen.product, gen.gene_biotype
FROM GENES gen
WHERE gen.gene_id IN", x2, "AND aa_longest = 1 ORDER BY gen.gene_id", sep = " "
                       )}
    if (mode == "full-longest") {
        query <- paste("
SELECT *
FROM GENES gen
WHERE gen.gene_id IN", x2, "AND aa_longest = 1 ORDER BY gen.gene_id", sep = " "
                       )}
    if (mode == "short-all") {
        query <- paste("
SELECT
gen.gene_id, gen.protein_id, gen.gene, gen.product, gen.gene_biotype
FROM GENES gen
WHERE gen.gene_id IN", x2, "ORDER BY gen.gene_id", sep = " "
                       )}
    if (mode == "full-all") {
        query <- paste("
SELECT *
FROM GENES gen
WHERE gen.gene_id IN", x2, "ORDER BY gen.gene_id", sep = " "
                       )}
    out <- dbGetQuery(.datacache$con, query)
    if (match) {
        ids = data.frame(x)
        out = merge(out, ids, by.x = "gene_id", by.y = "x", all.y = TRUE)
        out = out[match(ids[, 1], out[, 1]), ]
    }
    return(out)
}
