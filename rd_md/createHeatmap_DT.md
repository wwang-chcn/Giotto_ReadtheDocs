# `createHeatmap_DT`

createHeatmap_DT


## Description

creates order for clusters


## Usage

```r
createHeatmap_DT(
  gobject,
  expression_values = c("normalized", "scaled", "custom"),
  genes,
  cluster_column = NULL,
  cluster_order = c("size", "correlation", "custom"),
  cluster_custom_order = NULL,
  cluster_cor_method = "pearson",
  cluster_hclust_method = "ward.D",
  gene_order = c("correlation", "custom"),
  gene_custom_order = NULL,
  gene_cor_method = "pearson",
  gene_hclust_method = "complete"
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`expression_values`     |     expression values to use
`genes`     |     genes to use
`cluster_column`     |     name of column to use for clusters
`cluster_order`     |     method to determine cluster order
`cluster_custom_order`     |     custom order for clusters
`cluster_cor_method`     |     method for cluster correlation
`cluster_hclust_method`     |     method for hierarchical clustering of clusters
`gene_order`     |     method to determine gene order
`gene_custom_order`     |     custom order for genes
`gene_cor_method`     |     method for gene correlation
`gene_hclust_method`     |     method for hierarchical clustering of genes


## Details

Creates input data.tables for plotHeatmap function.


## Value

list


