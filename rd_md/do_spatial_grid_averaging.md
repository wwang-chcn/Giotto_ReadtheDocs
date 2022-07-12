# `do_spatial_grid_averaging`

do_spatial_grid_averaging


## Description

smooth gene expression over a defined spatial grid


## Usage

```r
do_spatial_grid_averaging(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  subset_genes = NULL,
  spatial_grid_name = "spatial_grid",
  min_cells_per_grid = 4
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     gene expression values to use
`subset_genes`     |     subset of genes to use
`spatial_grid_name`     |     name of spatial grid to use
`min_cells_per_grid`     |     minimum number of cells to consider a grid


## Value

matrix with smoothened gene expression values based on spatial grid


