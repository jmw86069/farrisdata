# farrisdata

R package containing gene and transcript expression data
supporting the [Farris et al 2019 paper](https://doi.org/10.1016/j.celrep.2019.08.093):<br>
**Hippocampal Subregions Express Distinct Dendritic Transcriptomes that Reveal Differences in Mitochondrial Function in CA2**.<br>
Cell Rep. 2019 Oct 8;29(2):522-539.e6.<br>
doi: [10.1016/j.celrep.2019.08.093](https://doi.org/10.1016/j.celrep.2019.08.093).

The Splicejam Web App is online:
[http://splicejam.vtc.vt.edu/](http://splicejam.vtc.vt.edu/)

This `farrisdata` data is intended for analysis using the `jampack` R package,
which ultimately uses the `splicejam` package for data visualization.

See:

* [https://github.com/jmw86069/jampack](https://github.com/jmw86069/jampack)
* [https://github.com/jmw86069/splicejam](https://github.com/jmw86069/splicejam)


## How to install

Install using the R package `remotes` and this command:

```
remotes::install_github("jmw86069/farrisdata")
```

## Quick Usage

```
# install R packages if necessary
remotes::install_github("jmw86069/farrisdata")
remotes::install_github("jmw86069/splicejam")

# Run the Splicejam Web Shiny App
library(splicejam)
launchSashimiApp()
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

## Additional Citations:

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
