
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
#' @format `list` of `data.frame` objects each with these columns:
#'    * `"Comparison"` - `character` string indicating the statistical
#'    comparison, and direction of change.
#'    * `"P-value"` - `numeric` adjusted enrichment P-value.
#'    * `"pathGenes"` - `integer` number of detected genes in each pathway.
#'    * `"geneHits"` - `integer` number of gene hits in each pathway.
#'    * `"itemsetID"` - `character` identifier for each pathway
#'    * `"Source"` - `character` source for each pathway, using MSigDB
#'    subcategory where applicable.
#'    * `"Name"` - short name for each gene set or pathway.
#'    * `"Description"` - long description for each gene set of pathway.
#'    * `"Category"` - `character` string using MSigDB category.
#'    * `"geneNames"` - `character` comma-delimited gene symbols including
#'    the number of genes in `"geneHits"`.
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


