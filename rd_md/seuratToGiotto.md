# `seuratToGiotto`

Convert a Seurat object to a Giotto object


## Description

Convert a Seurat object to a Giotto object


## Usage

```r
seuratToGiotto(
  sobject,
  spatial_assay = "Spatial",
  dim_reduction = c("pca", "umap"),
  subcellular_assay = "Vizgen"
)
```


## Arguments

Argument      |Description
------------- |----------------
`sobject`     |     Input Seurat object to convert to Giotto object
`spatial_assay`     |     Specify name of the spatial assay slot in Seurat. Default is `"Spatial"` .
`dim_reduction`     |     Specify which dimensional reduction computations to fetch from input Seurat object. Default is `"c('pca', 'umap')"` .
`subcellular_assay`     |     Specify name of the subcellular assay in input object. Default is `"Vizgen"` .


## Value

A Giotto object converted from Seurat object with all computations stored in it.


