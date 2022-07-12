# `crossSectionPlot`

crossSectionPlot


## Description

Visualize cells in a virtual cross section according to spatial coordinates


## Usage

```r
crossSectionPlot(
  gobject,
  crossSection_obj = NULL,
  name = NULL,
  spatial_network_name = "Delaunay_network",
  default_save_name = "crossSectionPlot",
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`crossSection_obj`     |     cross section object as alternative input. default = NULL.
`name`     |     name of virtual cross section to use
`spatial_network_name`     |     name of spatial network to use
`default_save_name`     |     default save name for saving, don't change, change save_name in save_param
`...`     |     parameters for spatPlot2D


## Details

Description of parameters.


## Value

ggplot


## Seealso

[`crossSectionPlot`](#crosssectionplot)


