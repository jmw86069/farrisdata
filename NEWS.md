# version 0.0.8.900

## changes

* Updated bigWig urls to reference new union coverage files,
produced using UCSC bigWigMerge, improved over previous
data using bwtool.
* Updated splice junction urls to refer to .gz compressed
files, to improve import speed.

# version 0.0.7.900

## changes

* Changed `farris_sashimi_files_df` to use union bigWig coverage files
to reduce data bandwidth. Added `scale_factor` values for each coverage
file and associated splice junction files. Updated the example
docs to show exactly how the files_df data.frame was created.

# version 0.0.6.900

## bug fixes

* Fixed issue with `farris_sashimi_files_df` that generated some
URL entries which do not exist.

# version 0.0.5.900

## additions

* `farris_sashimi_files_df` data.frame was added to support
`splicejam::prepareSashimi()` which uses a data.frame to configure
the various input locations for coverage and splice junction
files.

# version 0.0.4.900

## bug fixes

* Added "transcript_id" to colnames(rowData(farrisTxSE))

# version 0.0.3.900

## bug fixes

* Resolved a small issue in handling negative expression values for
normalized TPM data, by adding +1 to all non-zero values. This adjustment
ensures that all non-zero TPM values are still positive after normalization,
while all values which were originally zero are maintained at zero.
Note the TPM thresholds are already adjusted in the jampack Rmarkdown
analysis workflow, to accomodate this adjustment.

## enhancements

* Full docs were generated using pkgdown, describing each data object.

# version 0.0.2.900

## New data

* `GencodeVM12mm10cai` is a numeric vector of codon adaptability
index (CAI) values for mouse mm10 Gencode vM12.
* `GencodeVM12mm10caiCtLow` is an integer count of codons where the
CAI value is 0.5 or lower.
* `GencodeVM12mm10caiCtBad` is an integer count of codons where the
CAI value is 0.3 or lower.
* `GencodeVM12mm10cai` is a numeric vector of codon adaptability
index (CAI) values for mouse mm10 Gencode vM12.
* `GencodeVM12mm10cdsLength` is a numeric vector of CDS lengths
for mouse mm10 Gencode vM12.

# version 0.0.1.900

## New data

* AinsleyGenes, NakayamaGenes, CajigasGenes were added as reference
data from three published studies detecting hippocampal CA1 dendrite
genes, from mouse, mouse, and rat, respectively. These objects are
character vectors of gene symbols.
