# `doSNNCluster`

doSNNCluster


## Description

Cluster cells using a SNN cluster approach.


## Usage

```r
doSNNCluster(
  gobject,
  name = "sNN_clus",
  nn_network_to_use = "kNN",
  network_name = "kNN.pca",
  k = 20,
  eps = 4,
  minPts = 16,
  borderPoints = TRUE,
  return_gobject = TRUE,
  set_seed = FALSE,
  seed_number = 1234
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`name`     |     name for cluster, default to "sNN_clus"
`nn_network_to_use`     |     type of NN network to use (only works on kNN), default to "kNN"
`network_name`     |     name of kNN network to use, default to "kNN.pca"
`k`     |     Neighborhood size for nearest neighbor sparsification to create the shared NN graph, default = 20
`eps`     |     Two objects are only reachable from each other if they share at least eps nearest neighbors, default = 4
`minPts`     |     minimum number of points that share at least eps nearest neighbors for a point to be considered a core points, default = 16
`borderPoints`     |     should borderPoints be assigned to clusters like in DBSCAN? (default = TRUE)
`return_gobject`     |     boolean: return giotto object (default = TRUE)
`set_seed`     |     set seed (default = FALSE)
`seed_number`     |     number for seed


## Details

See [`sNNclust`](#snnclust) from dbscan package


## Value

giotto object with new clusters appended to cell metadata


