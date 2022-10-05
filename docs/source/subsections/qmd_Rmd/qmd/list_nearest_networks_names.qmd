# `list_nearest_networks_names`

list_nearest_networks_names


## Description

return the available nearest neighbor network object names


## Usage

```r
list_nearest_networks_names(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  nn_type = NULL
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`spat_unit`     |     spatial unit (e.g. "cell")
`feat_type`     |     feature type (e.g. "rna", "dna", "protein")
`nn_type`     |     nearest neighbor method (e.g. "sNN", "kNN")


## Details

function that can be used to find which names have been used


## Value

names of nearest neighbor network object


