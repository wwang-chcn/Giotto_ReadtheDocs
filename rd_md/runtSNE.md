# `runtSNE`

runtSNE


## Description

run tSNE


## Usage

```r
runtSNE(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  reduction = c("cells", "genes"),
  dim_reduction_to_use = "pca",
  dim_reduction_name = "pca",
  dimensions_to_use = 1:10,
  name = "tsne",
  genes_to_use = NULL,
  return_gobject = TRUE,
  dims = 2,
  perplexity = 30,
  theta = 0.5,
  do_PCA_first = F,
  set_seed = T,
  seed_number = 1234,
  verbose = TRUE,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     expression values to use
`reduction`     |     cells or genes
`dim_reduction_to_use`     |     use another dimension reduction set as input
`dim_reduction_name`     |     name of dimension reduction set to use
`dimensions_to_use`     |     number of dimensions to use as input
`name`     |     arbitrary name for tSNE run
`genes_to_use`     |     if dim_reduction_to_use = NULL, which genes to use
`return_gobject`     |     boolean: return giotto object (default = TRUE)
`dims`     |     tSNE param: number of dimensions to return
`perplexity`     |     tSNE param: perplexity
`theta`     |     tSNE param: theta
`do_PCA_first`     |     tSNE param: do PCA before tSNE (default = FALSE)
`set_seed`     |     use of seed
`seed_number`     |     seed number to use
`verbose`     |     verbosity of the function
`...`     |     additional tSNE parameters


## Details

See [`Rtsne`](#rtsne) for more information about these and other parameters. list() 
   

*  Input for tSNE dimension reduction can be another dimension reduction (default = 'pca')  

*  To use gene expression as input set dim_reduction_to_use = NULL  

*  If dim_reduction_to_use = NULL, genes_to_use can be used to select a column name of highly variable genes (see [`calculateHVG`](#calculatehvg) ) or simply provide a vector of genes  

*  multiple tSNE results can be stored by changing the name of the analysis


## Value

giotto object with updated tSNE dimension recuction


## Examples

```r
data(mini_giotto_single_cell)

mini_giotto_single_cell <- runtSNE(mini_giotto_single_cell,
dimensions_to_use = 1:3,
n_threads = 1,
n_neighbors = 3,
perplexity = 1)

plotTSNE(gobject = mini_giotto_single_cell)
```


