#'
#' farrisdata: Farris et al RNA-seq data
#'
#' Supporting data for Farris et al Mouse hippocampus
#' RNA-seq analysis workflow, utilizing the \code{jampack}
#' package.
#'
#' These objects are provided as \code{SummarizedExperiment}
#' objects as described in the Bioconductor package
#' \code{\link[SummarizedExperiment]{SummarizedExperiment}}.
#'
#' @section Available data:
#'    \code{\link[farrisdata]{farrisGeneSE}},
#'    \code{\link{farrisTxSE}}
#'
#' @section Gene and transcript models:
#'    Gene and transcript models were defined
#'    in the corresponding Gencode GTF file
#'    available from the Gencode FTP site:
#'
#'    \href{ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M12/gencode.vM12.annotation.gtf.gz}{gencode.vM12.annotation.gtf.gz}
#'
#'    Alignment to the transcriptome was performed using
#'    the FASTA sequence file also from Gencode FTP site:
#'
#'    \href{ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M12/gencode.vM12.transcripts.fa.gz}{gencode.vM12.transcripts.fa.gz}
#'
#'    Gencode data is subject to
#'    \href{https://creativecommons.org/licenses/by-nc-nd/2.5/}{Creative Commons License}
#'    (Attribution, Non-commercial, No-derivatives 2.5 license),
#'    see \url{https://creativecommons.org/licenses/by-nc-nd/2.5/}.
#'
#' @docType package
#' @name farrisdata
NULL


#' Farris et al gene-level expression data
#'
#' Farris et al gene-level expression data
#'
#' SummarizedExperiment object containing gene-level expression
#' data following Salmon quantitation, and import using
#' `tximport::tximport()` at the gene level.
#' Data is stored as log2-transformed pseudocounts from Salmon,
#' after median normalization.
#'
#' @format SummarizedExperiment object with 49341 gene rows, and 24
#' sample columns. Sample annotations are accessed as described
#' for \code{\link[SummarizedExperiment]{SummarizedExperiment-class}}
#' objects, using `SummarizedExperiment::colData()`.
#' Gene annotations are accessed using
#' `SummarizedExperiment::rowData()`.
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
#'    `tximport::tximport()`. The log2 transformation was
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
#'
#' @family farrisdata SummarizedExperiment data
#'
#' @examples
#' data(farrisGeneSE);
#' ## Gene annotation DataFrame
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(
#'       tail(head(SummarizedExperiment::rowData(farrisGeneSE), 3079), 10)
#'    )
#' } else {
#'    tail(head(SummarizedExperiment::rowData(farrisGeneSE), 3079), 10)
#' }
#'
#' ## Sample annotation DataFrame
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(
#'       SummarizedExperiment::colData(farrisGeneSE)
#'    )
#' } else {
#'    SummarizedExperiment::colData(farrisGeneSE)
#' }
#'
#' ## Assay data matrix for normalized counts
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(
#'       tail(head(SummarizedExperiment::assays(farrisGeneSE)[["counts"]], 3079), 10)
#'    )
#' } else {
#'    tail(head(SummarizedExperiment::assays(farrisGeneSE)[["counts"]], 3079), 10)
#' }
"farrisGeneSE"

#' Farris et al transcript-level expression data
#'
#' Farris et al transcript-level expression data
#'
#' SummarizedExperiment object containing transcript-level expression
#' data following Salmon quantitation, and import using
#' `tximport::tximport()` at the transcript level.
#' Data is stored as log2-transformed TPM, and log2-transformed
#' pseudocounts from Salmon, after median normalization.
#'
#' @format SummarizedExperiment object with 122733 transcript rows, and 24
#' sample columns. Sample annotations are accessed as described
#' for \code{\link[SummarizedExperiment]{SummarizedExperiment-class}}
#' objects, using `SummarizedExperiment::colData()`. Transcript and gene
#' annotations are accessed using `SummarizedExperiment::rowData()`.
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
#'    \item{tpm}{Median-normalized log2-transformed TPM values
#'    generated by Salmon, after import using
#'    `tximport::tximport()`. The log2 transformation was
#'    log2(1+x).}
#'    \item{counts}{Median-normalized log2-transformed pseudocount
#'    data per-gene generated by Salmon, after import using
#'    `tximport::tximport()`. The log2 transformation was
#'    log2(1+x).}
#'    \item{raw_tpm}{Raw log2-transformed TPM values
#'    generated by Salmon, after import using
#'    `tximport::tximport()`. The log2 transformation was
#'    log2(1+x).}
#'    \item{raw_counts}{The raw log2-transformed pseudocount data
#'    per-gene generated by Salmon. The log2 transformation was
#'    log2(1+x).}
#' }
#'
#' The rowData contains gene annotations, which includes the relationship
#' between transcript and gene.
#'
#' \describe{
#'    \item{transcript_id}{Gencode transcript_id as defined in the GTF file.}
#'    \item{geneSymbol}{Most current Entrez gene symbol associated with the
#'    transcript_id, as of June 2018.}
#'    \item{gene_type,transcript_type}{Gencode attributes as defined in
#'    the GTF file.}
#'    \item{has3UTR,TxHas3UTR}{Boolean indicating whether the gene or
#'    transcript contained an annotated 3'UTR region defined in the
#'    Gencode GTF file.}
#'    \item{TxHasExt3UTR,GeneHasExt3UTR}{Following 3'UTR extension
#'    based upon RNA-seq data coverage, this boolean field indicates whether
#'    each transcript or gene contains a 3'UTR with or without extension
#'    by observed RNA-seq coverage.}
#'    \item{TxDetectedByTPM}{Boolean indicating whether each transcript
#'    was considered "detected" based upon TPM and count data per gene,
#'    as described in `splicejam::defineDetectedTx()`.}
#' }
#'
#' @source Farris et al publication.
#'
#' @family farrisdata SummarizedExperiment data
#'
#' @examples
#' data(farrisTxSE);
#' ## Transcript-Gene annotation DataFrame
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(
#'       tail(head(SummarizedExperiment::rowData(farrisTxSE), 15385), 10)
#'    )
#' } else {
#'    tail(head(SummarizedExperiment::rowData(farrisTxSE), 15385), 10)
#' }
#'
#' ## Sample annotation DataFrame
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(
#'       SummarizedExperiment::colData(farrisTxSE)
#'    )
#' } else {
#'    head(SummarizedExperiment::colData(farrisTxSE));
#' }
#'
#' ## Assay data matrix for normalized TPM
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(
#'       tail(head(SummarizedExperiment::assays(farrisTxSE)[["tpm"]], 15385), 10)
#'    )
#' } else {
#'    tail(head(SummarizedExperiment::assays(farrisTxSE)[["tpm"]], 15385), 10)
#' }
"farrisTxSE"

#' Nakayama adult hippocampal CA1 dendritic genes
#'
#' Nakayama adult hippocampal CA1 dendritic genes
#'
#' Genes derived from Nakayama et al., 2017 mouse adult hippocampal CA1
#' dendrites.
#'
#' Gene symbols were updated using Bioconductor package
#' \code{org.Mm.eg.db}, using the reported `gene_name` or
#' `Entrez Gene ID` from the supplemental data. This step was performed
#' in order to ensure each reference dataset, including the Farris et al.
#' data, were using the same version of the gene symbol annotations.
#'
#' @source
#' Nakayama, K., Ohashi, R., Shinoda, Y., Yamazaki, M., Abe, M.,
#' Fujikawa, A., Shigenobu, S., Futatsugi, A., Noda, M., Mikoshiba, K.,
#' Furuichi, T., Sakimura, K., Shiina, N., 2017.
#' RNG105/caprin1, an RNA granule protein for dendritic mRNA localization,
#' is essential for long-term memory formation. eLife 6, e29677.
#' doi:10.7554/eLife.29677
#'
#' @family Reference mouse hippocampus gene lists
#'
#' @format character vector of Entrez gene symbols
#'
#' @examples
#' data(NakayamaGenes);
#' ## Print the first 50 genes
#' print(head(NakayamaGenes, 50));
"NakayamaGenes"

#' Ainsley adult hippocampal CA1 dendritic genes
#'
#' Ainsley adult hippocampal CA1 dendritic genes
#'
#' Genes derived from Ainsley et al., 2014 mouse adult hippocampal CA1
#' dendrites.
#'
#' Gene symbols were updated using Bioconductor package
#' \code{org.Mm.eg.db}, using the reported `gene_name` or
#' `Entrez Gene ID` from the supplemental data. This step was performed
#' in order to ensure each reference dataset, including the Farris et al.
#' data, were using the same version of the gene symbol annotations.
#'
#' @source
#' Ainsley, J.A., Drane, L., Jacobs, J., Kittelberger, K.A.,
#' Reijmers, L.G., 2014.
#' Functionally diverse dendritic mRNAs rapidly associate with
#' ribosomes following a novel experience. Nature Communications 5, 4510.
#' doi:10.1038/ncomms5510
#'
#' @family Reference mouse hippocampus gene lists
#'
#' @format character vector of Entrez gene symbols
#'
#' @examples
#' data(AinsleyGenes);
#' ## Print the first 50 genes
#' print(head(AinsleyGenes, 50));
"AinsleyGenes"

#' Cajigas rat hippocampal CA1 dendritic genes
#'
#' Cajigas rat hippocampal CA1 dendritic genes
#'
#' Genes derived from Cajigas et al., 2012 rat hippocampal CA1
#' dendrites.
#'
#' Gene symbols were updated using Bioconductor package
#' \code{org.Rn.eg.db}, using the reported `gene_name` or
#' `Entrez Gene ID` from the supplemental data. This step was performed
#' in order to ensure each reference dataset, including the Farris et al.
#' data, were using the same version of the gene symbol annotations.
#'
#' @source
#' Cajigas, I.J., Tushev, G., Will, T.J., tom Dieck, S., Fuerst, N.,
#' Schuman, E.M., 2012.
#' The local transcriptome in the synaptic neuropil revealed by
#' deep sequencing and high-resolution imag-ing.
#' Neuron 74, 453–466.
#' doi:10.1016/j.neuron.2012.02.036
#'
#' @family Reference mouse hippocampus gene lists
#'
#' @format character vector of Entrez gene symbols
#'
#' @examples
#' data(CajigasGenes);
#' ## Print the first 50 genes
#' print(head(CajigasGenes, 50));
"CajigasGenes"

#' Codon Adaptability Index for Gencode mouse mm10 vM12
#'
#' Codon Adaptability Index for Gencode mouse mm10 vM12
#'
#' @format numeric vector of codon adaptability index (cai)
#' values named by transcript_name defined in the Gencode
#' GTF file for vM12.
#'
#' @examples
#' data(GencodeVM12mm10cai);
#' ## Print the first 20 entries
#' print(head(GencodeVM12mm10cai, 20));
"GencodeVM12mm10cai"

#' Count of Low CAI codons for Gencode mouse mm10 vM12
#'
#' Count of Low CAI codons for Gencode mouse mm10 vM12
#'
#' This data is derived from codon adaptability index (CAI)
#' data, summarized to count the number of residues where
#' the CAI value is 0.5 or lower. This value indicates the
#' codon is no more than 50% the maximum codon for a given
#' amino acid.
#'
#' @format integer number of codons where the CAI is 0.5
#' or lower, named by transcript_name defined in the Gencode
#' GTF file for vM12.
#'
#' @family Mouse codon usage data
#'
#' @examples
#' data(GencodeVM12mm10caiCtLow);
#' ## Print the first 20 entries
#' print(head(GencodeVM12mm10caiCtLow, 20));
"GencodeVM12mm10caiCtLow"

#' Count of Bad CAI codons for Gencode mouse mm10 vM12
#'
#' Count of Bad CAI codons for Gencode mouse mm10 vM12
#'
#' This data is derived from codon adaptability index (CAI)
#' data, summarized to count the number of residues where
#' the CAI value is 0.3 or lower. This value indicates the
#' codon is no more than 30% the maximum codon for a given
#' amino acid.
#'
#' @format integer number of codons where the CAI is 0.3
#' or lower, named by transcript_name defined in the Gencode
#' GTF file for vM12.
#'
#' @examples
#' data(GencodeVM12mm10caiCtBad);
#' ## Print the first 20 entries
#' print(head(GencodeVM12mm10caiCtBad, 20));
"GencodeVM12mm10caiCtBad"

#' Mean of Q1 CAI values for Gencode mouse mm10 vM12
#'
#' Mean of Q1 CAI values for Gencode mouse mm10 vM12
#'
#' This data is derived from codon adaptability index (CAI)
#' data, summarized to represent the mean of the lowest quartile
#' of CAI values per transcript.
#'
#' @format numeric vector with the mean CAI value from the lowest
#' quartile of CAI values per transcript,
#' named by transcript_name defined in the Gencode
#' GTF file for vM12.
#'
#' @family Mouse codon usage data
#'
#' @examples
#' data(GencodeVM12mm10caiQ1mean);
#' ## Print the first 20 entries
#' print(head(GencodeVM12mm10caiQ1mean, 20));
"GencodeVM12mm10caiQ1mean"

#' CDS length for Gencode mouse mm10 vM12
#'
#' CDS length for Gencode mouse mm10 vM12
#'
#' @format numeric vector of CDS length for each
#' protein-coding transcript as defined in the Gencode
#' GTF file for vM12.
#'
#' @family Mouse codon usage data
#'
#' @examples
#' data(GencodeVM12mm10cdsLength);
#' ## Print the first 20 entries
#' print(head(GencodeVM12mm10cdsLength, 20));
"GencodeVM12mm10cdsLength"

#' Group colors used for Farris data
#'
#' Group colors used for Farris data
#'
#' The `colorSub` object is simple a vector of colors,
#' named by the experimental factors, the sample groups,
#' and boolean TRUE and FALSE.
#'
#' @format character vector of R color names, named by the
#' experiment factors, sample groups, and boolean values TRUE
#' and FALSE.
#'
#' @family Farris et al colors
#'
#' @examples
#' data(colorSub);
#' print(colorSub);
#'
#' # Split into a list, just for visualization
#' colorSubType <- ifelse(grepl("_", names(colorSub)),
#'    "Group",
#'    "Factor");
#' colorSubL <- split(colorSub, colorSubType);
#' if (require(jamba)) {
#'    showColors(colorSubL);
#' }
"colorSub"


#' Sashimi plot files data.frame for Farris data
#'
#' Sashimi plot files data.frame for Farris data
#'
#' @format data.frame suitable for use with
#'    `splicejam::prepareSashimi()` for the `filesDF`
#'    argument.
#'
#' @family Sashimi plot data
#'
#' @examples
#' #farris_sashimi_files_df
#' base_url <- "https://orio.niehs.nih.gov/ucscview/farrisHub/mm10/";
#' factor1 <- c("CA1", "CA2", "CA3", "DG");
#' factor2 <- c("CB", "DE");
#' junc_suffix <- ".STAR_mm10.combinedJunctions.bed.gz";
#' junc_urls <- paste0(base_url,
#'    rep(factor1, each=2),
#'    "_",
#'    rep(factor2, 4),
#'    junc_suffix);
#' junc_sample_id <- paste(rep(factor1, each=2),
#'    rep(factor2, 4),
#'    sep="_");
#' junc_scale_factors <- 2^c(
#'    CA1_CB=-0.185,
#'    CA1_DE=0.146,
#'    CA2_CB=-0.241,
#'    CA2_DE=0.765,
#'    CA3_CB=-0.215,
#'    CA3_DE=0.256,
#'    DG_CB=-0.376,
#'    DG_DE=0.372);
#' junc_df <- data.frame(sample_id=junc_sample_id,
#'    url=junc_urls,
#'    type="junction",
#'    scale_factor=junc_scale_factors[junc_sample_id]);
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(junc_df)
#' } else {
#'    junc_df;
#' }
#'
#' bw_factor1 <- c(factor1);
#' bw_factor2 <- c(factor2);
#' bw_base_url <- paste0(base_url, "union_bigwig/");
#' bw_strand <- c("pos", "neg");
#' bw_suffix <- ".bw";
#' bw_urls <- paste0(
#'    rep(bw_factor1, each=4),
#'    "_",
#'    rep(bw_factor2, each=2),
#'    ".union.",
#'    bw_strand,
#'    bw_suffix
#' );
#' bw_scale_factors <- 2^c(
#'    CA1_CB=-0.0157,
#'    CA1_DE=0.306,
#'    CA2_CB=-0.0266,
#'    CA2_DE=0.0947,
#'    CA3_CB=0.00839,
#'    CA3_DE=0.528,
#'    DG_CB=-0.243,
#'    DG_DE=-0.283);
#'
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(as.data.frame(matrix(bw_urls, ncol=5)))
#' } else {
#'    as.data.frame(matrix(bw_urls, ncol=4));
#' }
#'
#' # remove NA entries
#' bw_url <- jamba::rmNA(bw_urls);
#' bw_sample_id <- gsub("^.*(CA[123]|DG)[_]*(CB|DE).*",
#'    "\\1_\\2",
#'    bw_url);
#' bw_df <- data.frame(
#'    url=paste0(bw_base_url, bw_url),
#'    sample_id=bw_sample_id,
#'    type="bw",
#'    scale_factor=bw_scale_factors[bw_sample_id]);
#' bw_df <- bw_df[do.call(order, bw_df[,c(2,1,3)]),];
#'
#' farris_sashimi_files_df <- rbind(
#'    junc_df,
#'    bw_df);
#' # replace missing scale_factor with 1, should not be necessary
#' farris_sashimi_files_df$scale_factor[is.na(farris_sashimi_files_df$scale_factor)] <- 1;
#' farris_sashimi_files_df$CellType <- factor(
#'    gsub("_.+", "",
#'       farris_sashimi_files_df$sample_id),
#'    levels=factor1);
#' farris_sashimi_files_df$Compartment <- factor(
#'    gsub("^.+_", "",
#'       farris_sashimi_files_df$sample_id),
#'    levels=factor2);
#' if (suppressPackageStartupMessages(require(knitr))) {
#'    knitr::kable(farris_sashimi_files_df)
#' } else {
#'    farris_sashimi_files_df;
#' }
#'
#' table(farris_sashimi_files_df[,c("CellType", "Compartment", "type")]);
#'
"farris_sashimi_files_df"

