# `subsetGiottoLocs`

subsetGiottoLocs


## Description

subsets Giotto object based on spatial locations


## Usage

```r
subsetGiottoLocs(
  gobject,
  x_max = NULL,
  x_min = NULL,
  y_max = NULL,
  y_min = NULL,
  z_max = NULL,
  z_min = NULL,
  return_gobject = T,
  verbose = FALSE
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`x_max`     |     maximum x-coordinate
`x_min`     |     minimum x-coordinate
`y_max`     |     maximum y-coordinate
`y_min`     |     minimum y-coordinate
`z_max`     |     maximum z-coordinate
`z_min`     |     minimum z-coordinate
`return_gobject`     |     return Giotto object
`verbose`     |     be verbose


## Details

if return_gobject = FALSE, then a filtered combined metadata data.table will be returned


## Value

giotto object


## Examples

```r
list("\n", "\n", "data(mini_giotto_single_cell)\n", "\n", "# spatial plot\n", "spatPlot(mini_giotto_single_cell)\n", "\n", "# subset giotto object based on spatial locations\n", "subset_obj = subsetGiottoLocs(mini_giotto_single_cell,\n", "x_max = 1500, x_min = 1000,\n", "y_max = -500, y_min = -1000)\n", "\n", "# spatial plot of subset giotto object\n", "spatPlot(subset_obj)\n", "\n")
```


