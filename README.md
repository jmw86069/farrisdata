# farrisdata

R package containing gene and transcript expression data
supporting Farris et al Mouse hippocampal transcriptome
RNA-seq analysis.

This data is intended for analysis
using the `jampack` R package, also available through
GitHub, see [https://github.com/jmw86069/jampack](https://github.com/jmw86069/jampack)

## How to install

Install using the R package `devtools` and this command:

```
devtools::install_github("jmw86069/farrisdata")
```

## Contents

A full set of documentation is provided using the `pkgdown::build_site()`
function, and is available here:

[Full data reference](https://jmw86069.github.io/farrisdata)

This package contains two reference `SummarizedExperiment` objects,
which are described in more detail in the corresponding R help pages.

* **farrisGeneSE** gene-level Salmon pseudocounts.
* **farrisTxSE** transcript-level Salmon pseudocounts, and TPM values.

The package also provides three reference gene lists containing
detected genes in hippocampal CA1 in mouse and rat (Nakayama et al. 2017,
Ainsley et al., 2014, Cajigas et al. 2012).

Lastly, the package provides a color substitution vector `colorSub`,
and several vectors with derived transcript features.

## Literature references:

Nakayama, K., Ohashi, R., Shinoda, Y., Yamazaki, M., Abe, M.,
Fujikawa, A., Shigenobu, S., Futatsugi, A., Noda, M., Mikoshiba, K.,
Furuichi, T., Sakimura, K., Shiina, N., 2017.
**RNG105/caprin1, an RNA granule protein for dendritic mRNA localization,
is essential for long-term memory formation.** eLife 6, e29677.
doi:10.7554/eLife.29677

Ainsley, J.A., Drane, L., Jacobs, J., Kittelberger, K.A.,
Reijmers, L.G., 2014.
**Functionally diverse dendritic mRNAs rapidly associate with
ribosomes following a novel experience.** Nature Communications 5, 4510.
doi:10.1038/ncomms5510

Cajigas, I.J., Tushev, G., Will, T.J., tom Dieck, S., Fuerst, N.,
Schuman, E.M., 2012.
**The local transcriptome in the synaptic neuropil revealed by
deep sequencing and high-resolution imag-ing.**
Neuron 74, 453–466.
doi:10.1016/j.neuron.2012.02.036
