get.id <-
function (x, id.type = "locus"){
    if(! id.type %in% c('locus','protein','transcript') )
        stop('ERROR: Unknown ID-type')
    x2 = paste(x, sep = ", ", collapse = "', '")
    x2 = paste("('", x2, "')", sep = "")
    ## define query
    if(x[1] == "*"){
                query <- paste("
SELECT
gen.gene_id, gen.gene, gen.protein_id, gen.transcript_id, gen.gene_biotype
FROM GENES gen ORDER BY gen.gene_id", sep =" ")
            }
    else if(id.type == "locus"){
                query <- paste("
SELECT
gen.gene_id, gen.gene
FROM GENES gen
WHERE gen.gene IN", x2, "ORDER BY gen.gene", sep = " ")
            }
    else if(id.type == "transcript"){
                        query <- paste("
SELECT
gen.gene_id, gen.transcript_id
FROM GENES gen
WHERE gen.transcript_id IN", x2, "ORDER BY gen.gene_id", sep = " ")
                    }
    else if(id.type == "protein"){
                   query <- paste("
SELECT
gen.gene_id, gen.protein_id
FROM GENES gen
WHERE gen.protein_id IN", x2, "ORDER BY gen.gene_id", sep = " ")
               }
    out <- dbGetQuery(.datacache$con, query)
    return(out)
}
