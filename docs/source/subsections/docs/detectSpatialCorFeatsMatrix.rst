detectSpatialCorFeatsMatrix
---------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L3125
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Detect genes that are spatially correlated

Usage
~~~~~

::

   detectSpatialCorFeatsMatrix(
     expression_matrix,
     method = c("grid", "network"),
     spatial_network,
     spatial_grid,
     spatial_locs,
     subset_feats = NULL,
     network_smoothing = NULL,
     min_cells_per_grid = 4,
     cor_method = c("pearson", "kendall", "spearman")
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``expression_matrix``             | provided expression matrix        |
+-----------------------------------+-----------------------------------+
| ``method``                        | method to use for spatial         |
|                                   | averaging                         |
+-----------------------------------+-----------------------------------+
| ``spatial_network``               | provided spatial network          |
+-----------------------------------+-----------------------------------+
| ``spatial_grid``                  | provided spatial grid             |
+-----------------------------------+-----------------------------------+
| ``spatial_locs``                  | provided spatial locations        |
+-----------------------------------+-----------------------------------+
| ``subset_feats``                  | subset of features to use         |
+-----------------------------------+-----------------------------------+
| ``network_smoothing``             | smoothing factor beteen 0 and 1   |
|                                   | (default: automatic)              |
+-----------------------------------+-----------------------------------+
| ``min_cells_per_grid``            | minimum number of cells to        |
|                                   | consider a grid                   |
+-----------------------------------+-----------------------------------+
| ``cor_method``                    | correlation method                |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

For method = network, it expects a fully connected spatial network. You
can make sure to create a fully connected network by setting minimal_k >
0 in the ``createSpatialNetwork`` function.

-  1. grid-averaging: average gene expression values within a predefined
   spatial grid

-  2. network-averaging: smoothens the gene expression matrix by
   averaging the expression within one cell by using the neighbours
   within the predefined spatial network. b is a smoothening factor that
   defaults to 1 - 1/k, where k is the median number of k-neighbors in
   the selected spatial network. Setting b = 0 means no smoothing and b
   = 1 means no contribution from its own expression.

The spatCorObject can be further explored with showSpatialCorGenes()

Value
~~~~~

returns a spatial correlation object: "spatCorObject"

See Also
~~~~~~~~

``showSpatialCorFeats``
