
#' Farris et al gene set enrichment data.frames
#'
#' Farris et al gene set enrichment data.frames
#'
#' This object is a `list` that contains one `data.frame`
#' for each gene set enrichment test.
#'
#' Each gene hit list was tested against MSigDB v6.0
#' using hypergeometric enrichment. The MSigDB data
#' is available from Subramanian, Tamayo, et al.
#' [(2005, PNAS 102, 15545-15550)](http://www.pnas.org/cgi/content/abstract/102/43/15545)
#' and  Liberzon, et al.
#' [(2011, Bionformatics)](https://doi.org/10.1093/bioinformatics/btr260)
#'
#' @family Farris enrichment data
#'
#' @examples
#' data(EnrichmentDFL);
#'
#' # show the first few rows of one data.frame
#' head(EnrichmentDFL[[1]])
#'
#' # If you have the tibble package, it has a clean display
#' if (require(tibble)) {
#'    print(tibble::tibble(EnrichmentDFL[[1]]))
#' }
#'
#' # the jamba package sdim() is a good summary
#' jamba::sdim(EnrichmentDFL);
#'
#' @source Farris et al 2019
"EnrichmentDFL"


