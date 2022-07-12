# `normalizeGiotto`

normalizeGiotto


## Description

fast normalize and/or scale expresion values of Giotto object


## Usage

```r
normalizeGiotto(
  gobject,
  norm_methods = c("standard", "osmFISH"),
  library_size_norm = TRUE,
  scalefactor = 6000,
  log_norm = TRUE,
  log_offset = 1,
  logbase = 2,
  scale_genes = T,
  scale_cells = T,
  scale_order = c("first_genes", "first_cells"),
  verbose = F
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`norm_methods`     |     normalization method to use
`library_size_norm`     |     normalize cells by library size
`scalefactor`     |     scale factor to use after library size normalization
`log_norm`     |     transform values to log-scale
`log_offset`     |     offset value to add to expression matrix, default = 1
`logbase`     |     log base to use to log normalize expression values
`scale_genes`     |     z-score genes over all cells
`scale_cells`     |     z-score cells over all genes
`scale_order`     |     order to scale genes and cells
`verbose`     |     be verbose


## Details

Currently there are two 'methods' to normalize your raw counts data.
 
 A. The standard method follows the standard protocol which can be adjusted using
 the provided parameters and follows the following order: list() 
   

*  1. Data normalization for total library size and scaling by a custom scale-factor.   

*  2. Log transformation of data.   

*  3. Z-scoring of data by genes and/or cells.  
 B. The normalization method as provided by the osmFISH paper is also implemented: list() 
   

*  list("1. First normalize genes, for each gene divide the counts by the total gene count and\n", "multiply by the total number of genes.")   

*  list("2. Next normalize cells, for each cell divide the normalized gene counts by the total\n", "counts per cell and multiply by the total number of cells.")  
 This data will be saved in the Giotto slot for custom expression.


## Value

giotto object


## Examples

```r
data(mini_giotto_single_cell)

norm_gobject = normalizeGiotto(mini_giotto_single_cell)
```


