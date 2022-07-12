# `filterGiotto`

filterGiotto


## Description

filter Giotto object based on expression threshold


## Usage

```r
filterGiotto(
  gobject,
  expression_values = c("raw", "normalized", "scaled", "custom"),
  expression_threshold = 1,
  gene_det_in_min_cells = 100,
  min_det_genes_per_cell = 100,
  verbose = F
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     expression values to use
`expression_threshold`     |     threshold to consider a gene expressed
`gene_det_in_min_cells`     |     minimum # of cells that need to express a gene
`min_det_genes_per_cell`     |     minimum # of genes that need to be detected in a cell
`verbose`     |     verbose


## Details

The function [`filterCombinations`](#filtercombinations) can be used to explore the effect of different parameter values.


## Value

giotto object


## Examples

```r
data(mini_giotto_single_cell)

filtered_gobject = filterGiotto(mini_giotto_single_cell,
gene_det_in_min_cells = 10,
min_det_genes_per_cell = 10)
```


