# `addCellStatistics`

addCellStatistics


## Description

adds cells statistics to the giotto object


## Usage

```r
addCellStatistics(
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

This function will add the following statistics to cell metadata:
   

*  nr_genes:  Denotes in how many genes are detected per cell   

*  perc_genes:  Denotes what percentage of genes is detected per cell   

*  total_expr:  Shows the total sum of gene expression per cell


## Value

giotto object if return_gobject = TRUE


## Examples

```r
data(mini_giotto_single_cell)

updated_giotto_object = addCellStatistics(mini_giotto_single_cell)
```


