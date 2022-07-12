# `findScranMarkers`

findScranMarkers


## Description

Identify marker genes for all or selected clusters based on scran's implementation of findMarkers.


## Usage

```r
findScranMarkers(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  cluster_column,
  subset_clusters = NULL,
  group_1 = NULL,
  group_2 = NULL,
  verbose = FALSE,
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
`group_1`     |     group 1 cluster IDs from cluster_column for pairwise comparison
`group_2`     |     group 2 cluster IDs from cluster_column for pairwise comparison
`verbose`     |     be verbose (default = FALSE)
`...`     |     additional parameters for the findMarkers function in scran


## Details

This is a minimal convenience wrapper around
 the [`findMarkers`](#findmarkers) function from the scran package.
 
 To perform differential expression between cluster groups you need to specificy cluster IDs
 to the parameters group_1 and group_2 .


## Value

data.table with marker genes


## Examples

```r
data(mini_giotto_single_cell)

scran_markers = findScranMarkers(gobject = mini_giotto_single_cell,
cluster_column = 'leiden_clus',
group_1 = 1,
group_2 = 2)
```


