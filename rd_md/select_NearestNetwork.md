# `select_NearestNetwork`

select_NearestNetwork


## Description

Extracts a NN-network from a Giotto object


## Usage

```r
select_NearestNetwork(
  gobject,
  nn_network_to_use = "sNN",
  network_name = "sNN.pca",
  output = c("igraph", "data.table")
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`nn_network_to_use`     |     kNN or sNN
`network_name`     |     name of NN network to be used
`output`     |     return a igraph or data.table object


## Value

igraph or data.table object


