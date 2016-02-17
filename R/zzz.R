# open new environment
.datacache <- new.env(hash=TRUE, parent=emptyenv())

.onLoad <- function(libname, pkgname) {
    # locate the DB
    .datacache$db.wd <- system.file("extdata", package = "Ssa.RefSeq.db", mustWork=TRUE)
    # Connect to the DB
    #drv <- dbDriver("SQLite")
    .datacache$con <- dbConnect(dbDriver("SQLite"),
                                dbname = file.path(.datacache$db.wd,
                                "Ssa-RefSeq.db"))
}
