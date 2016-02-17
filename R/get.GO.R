get.GO <-
function(x, TERM = "BP"){
    if (TERM == "CC") 
        ont = "'cc'"
    if (TERM == "BP") 
        ont = "'bp'"
    if (TERM == "MF") 
        ont = "'mf'"
    if (x[1] == "*"){
                query <- paste("
SELECT gen.gene_id, go.go_id
FROM GENES gen JOIN GO go ON go.protein_id = gen.protein_id
WHERE go.ontology =", ont, sep =" "
                       )
    }else{
        x2 = paste(x, sep = ", ", collapse = "', '")
        x2 = paste("('", x2, "')", sep = "")
        query <- paste("
SELECT gen.gene_id, go.go_id
FROM GENES gen JOIN GO go ON go.protein_id = gen.protein_id
WHERE gen.gene_id IN" , x2, "AND go.ontology =", ont, sep =" "
                       )
    }
    dbGetQuery(.datacache$con, query)
}
