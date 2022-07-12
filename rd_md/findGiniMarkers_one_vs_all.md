# `findGiniMarkers_one_vs_all`

findGiniMarkers_one_vs_all


## Description

Identify marker genes for all clusters in a one vs all manner based on gini detection and expression scores.


## Usage

```r
findGiniMarkers_one_vs_all(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  cluster_column,
  subset_clusters = NULL,
  min_expr_gini_score = 0.5,
  min_det_gini_score = 0.5,
  detection_threshold = 0,
  rank_score = 1,
  min_genes = 4,
  verbose = TRUE
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     gene expression values to use
`cluster_column`     |     clusters to use
`subset_clusters`     |     selection of clusters to compare
`min_expr_gini_score`     |     filter on minimum gini coefficient on expression
`min_det_gini_score`     |     filter on minimum gini coefficient on detection
`detection_threshold`     |     detection threshold for gene expression
`rank_score`     |     rank scores for both detection and expression to include
`min_genes`     |     minimum number of top genes to return
`verbose`     |     be verbose


## Value

data.table with marker genes


## Seealso

[`findGiniMarkers`](#findginimarkers)


## Examples

```r
data(mini_giotto_single_cell)

gini_markers = findGiniMarkers_one_vs_all(gobject = mini_giotto_single_cell,
cluster_column = 'leiden_clus')
```


