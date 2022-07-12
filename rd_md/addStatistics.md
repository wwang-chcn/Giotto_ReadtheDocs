# `addStatistics`

addStatistics


## Description

adds genes and cells statistics to the giotto object


## Usage

```r
addStatistics(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  detection_threshold = 0,
  return_gobject = TRUE
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     expression values to use
`detection_threshold`     |     detection threshold to consider a gene detected
`return_gobject`     |     boolean: return giotto object (default = TRUE)


## Details

See [`addGeneStatistics`](#addgenestatistics) and [`addCellStatistics`](#addcellstatistics)


## Value

giotto object if return_gobject = TRUE, else a list with results


## Examples

```r
data(mini_giotto_single_cell)

updated_giotto_object = addStatistics(mini_giotto_single_cell)
```


