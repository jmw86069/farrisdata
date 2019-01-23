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
