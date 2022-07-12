# `subsetGiotto`

subsetGiotto


## Description

subsets Giotto object including previous analyses.


## Usage

```r
subsetGiotto(gobject, cell_ids = NULL, gene_ids = NULL, verbose = FALSE)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`cell_ids`     |     cell IDs to keep
`gene_ids`     |     gene IDs to keep
`verbose`     |     be verbose


## Value

giotto object


## Examples

```r
list("\n", "\n", "data(mini_giotto_single_cell)\n", "\n", "random_cells = sample(slot(mini_giotto_single_cell, 'cell_ID'), 10)\n", "random_genes = sample(slot(mini_giotto_single_cell, 'gene_ID'), 10)\n", "\n", "subset_obj = subsetGiotto(mini_giotto_single_cell,\n", "                         cell_ids = random_cells,\n", "                         gene_ids = random_genes)\n", "\n")
```


