#! /usr/local/bin/Rscript
library(jsonlite)

read_metadata <- function(file) {
    x <- readr::read_lines(file)
    rng <- grep("^---$", x)
    x <- c(x[rng[1]:rng[2]], rep("", 1))
    return(x)
}

a = commandArgs(trailingOnly = TRUE)
print(a)
outpath <- "docs"
fname <- basename(a)
outfile <- file.path(outpath, fname)

cmd <- sprintf("pandoc %s -t commonmark --citeproc --csl=aje.csl --bibliography=contextual-epi.bib -M link-citations=true| sed -e 's/\ js/js/g'",a)

header <- read_metadata(a)

x <- system(cmd, intern = TRUE)
x <- c(header, x)

write(x, file = outfile)