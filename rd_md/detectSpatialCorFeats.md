# `detectSpatialCorFeats`

detectSpatialCorFeats


## Description

Detect features that are spatially correlated


## Usage

```r
detectSpatialCorFeats(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  spat_loc_name = "raw",
  method = c("grid", "network"),
  expression_values = c("normalized", "scaled", "custom"),
  subset_feats = NULL,
  spatial_network_name = "Delaunay_network",
  network_smoothing = NULL,
  spatial_grid_name = "spatial_grid",
  min_cells_per_grid = 4,
  cor_method = c("pearson", "kendall", "spearman")
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`spat_unit`     |     spatial unit
`feat_type`     |     feature type
`spat_loc_name`     |     name for spatial locations
`method`     |     method to use for spatial averaging
`expression_values`     |     gene expression values to use
`subset_feats`     |     subset of feats to use
`spatial_network_name`     |     name of spatial network to use
`network_smoothing`     |     smoothing factor beteen 0 and 1 (default: automatic)
`spatial_grid_name`     |     name of spatial grid to use
`min_cells_per_grid`     |     minimum number of cells to consider a grid
`cor_method`     |     correlation method


## Details

For method = network, it expects a fully connected spatial network. You can make sure to create a
 fully connected network by setting minimal_k > 0 in the [`createSpatialNetwork`](#createspatialnetwork) function.
   

*  list("1. grid-averaging: ") list("average gene expression values within a predefined spatial grid")   

*  list("2. network-averaging: ") list("smoothens the gene expression matrix by averaging the expression within one cell\n", " by using the neighbours within the predefined spatial network. b is a smoothening factor\n", " that defaults to 1 - 1/k, where k is the median number of  k-neighbors in the\n", " selected spatial network. Setting b = 0 means no smoothing and b = 1 means no contribution\n", " from its own expression.")  
 The spatCorObject can be further explored with showSpatialCorFeats()


## Value

returns a spatial correlation object: "spatCorObject"


## Seealso

[`showSpatialCorFeats`](#showspatialcorfeats)


