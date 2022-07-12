# `annotateSpatialGrid`

annotateSpatialGrid


## Description

annotate spatial grid with cell ID and cell metadata (optional)


## Usage

```r
annotateSpatialGrid(
  gobject,
  spatial_grid_name = "spatial_grid",
  cluster_columns = NULL
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     Giotto object
`spatial_grid_name`     |     name of spatial grid, see [`showGrids`](#showgrids)
`cluster_columns`     |     names of cell metadata, see [`pDataDT`](#pdatadt)


## Value

annotated spatial grid data.table


