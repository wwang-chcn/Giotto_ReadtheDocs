# `findMastMarkers_one_vs_all`

findMastMarkers_one_vs_all


## Description

Identify marker genes for all clusters in a one vs all manner based on the MAST package.


## Usage

```r
findMastMarkers_one_vs_all(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  cluster_column,
  subset_clusters = NULL,
  adjust_columns = NULL,
  pval = 0.001,
  logFC = 1,
  min_genes = 10,
  verbose = TRUE,
  ...
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     gene expression values to use
`cluster_column`     |     clusters to use
`subset_clusters`     |     selection of clusters to compare
`adjust_columns`     |     column in pDataDT to adjust for (e.g. detection rate)
`pval`     |     filter on minimal p-value
`logFC`     |     filter on logFC
`min_genes`     |     minimum genes to keep per cluster, overrides pval and logFC
`verbose`     |     be verbose
`...`     |     additional parameters for the zlm function in MAST


## Value

data.table with marker genes


## Seealso

[`findMastMarkers`](#findmastmarkers)


## Examples

```r
data(mini_giotto_single_cell)

mast_markers = findMastMarkers_one_vs_all(gobject = mini_giotto_single_cell,
cluster_column = 'leiden_clus')
```


