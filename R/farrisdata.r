# farrisdata.r

#' Farris et al gene-level expression data
#'
#' Farris et al gene-level expression data
#'
#' SummarizedExperiment object containing gene-level expression
#' data following Salmon quantitation, and import using
#' \code{\link[tximport]{tximport}} at the gene level.
#' Data is stored as log2-transformed pseudocounts from Salmon,
#' after median normalization.
#'
#' @format SummarizedExperiment with 49341 gene rows, and 24
#' sample columns. Sample annotations are accessed as described
#' for \code{\link[SummarizedExperiment]{SummarizedExperiment-class}}
#' objects, using \code{colData(farrisGeneSE)}. Gene annotations
#' are accessed using \code{rowData(farrisGeneSE)}.
#'
#' The colData colnames are described as follows:
#'
#'    \describe{
#'       \item{CellType}{The major excitatory pyramidal cell types in
#'       the mouse hippocampus, CA1, CA2, CA3, and dentate gyrus (DG).}
#'       \item{Compartment}{The cellular compartment within each
#'       cell type: CB (cell body) is the pyramidal cell layer;
#'       DE (dendrite) is stratum radiatum of CA1, CA2, CA3, and the
#'       molecular layer of DG.}
#'       \item{AnimalID}{The number assigned to each mouse.}
#'       \item{groupName}{The sample group name associated with each
#'       \code{CellType} and \code{Compartment}.}
#'    }
#'
#' The count data is accessed through the function \code{assays}
#' and has the following entries:
#'
#' \describe{
#'    \item{counts}{Median-normalized log2-transformed pseudocount
#'    data per-gene generated by Salmon, after import using
#'    \code{\link[tximport]{tximport}}. The log2 transformation was
#'    log2(1+x).}
#'    \item{raw_counts}{The raw log2-transformed pseudocount data
#'    per-gene generated by Salmon. The log2 transformation was
#'    log2(1+x).}
#' }
#'
#' The rowData contains gene annotations, in this case limited to
#' the Entrez gene symbol.
#'
#' @source Farris et al publication.
"farrisGeneSE"
