# `doKmeans`

doKmeans


## Description

cluster cells using kmeans algorithm


## Usage

```r
doKmeans(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  genes_to_use = NULL,
  dim_reduction_to_use = c("cells", "pca", "umap", "tsne"),
  dim_reduction_name = "pca",
  dimensions_to_use = 1:10,
  distance_method = c("original", "pearson", "spearman", "euclidean", "maximum",
    "manhattan", "canberra", "binary", "minkowski"),
  centers = 10,
  iter_max = 100,
  nstart = 1000,
  algorithm = "Hartigan-Wong",
  name = "kmeans",
  return_gobject = TRUE,
  set_seed = T,
  seed_number = 1234
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     expression values to use
`genes_to_use`     |     subset of genes to use
`dim_reduction_to_use`     |     dimension reduction to use
`dim_reduction_name`     |     dimensions reduction name
`dimensions_to_use`     |     dimensions to use
`distance_method`     |     distance method
`centers`     |     number of final clusters
`iter_max`     |     kmeans maximum iterations
`nstart`     |     kmeans nstart
`algorithm`     |     kmeans algorithm
`name`     |     name for kmeans clustering
`return_gobject`     |     boolean: return giotto object (default = TRUE)
`set_seed`     |     set seed
`seed_number`     |     number for seed


## Details

Description on how to use Kmeans clustering method.


## Value

giotto object with new clusters appended to cell metadata


## Seealso

[`kmeans`](#kmeans)


## Examples

```r
data(mini_giotto_single_cell)

mini_giotto_single_cell = doKmeans(mini_giotto_single_cell, centers = 4, name = 'kmeans_clus')
plotUMAP_2D(mini_giotto_single_cell, cell_color = 'kmeans_clus', point_size = 3)
```


