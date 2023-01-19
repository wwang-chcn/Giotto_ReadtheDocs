=====================
detectSpatialCorGenes
=====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L3426



   :format: latex
..

``detectSpatialCorGenes``
=========================

detectSpatialCorGenes

Description
-----------

Detect genes that are spatially correlated

Usage
-----

.. code:: r

   detectSpatialCorGenes(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     method = c("grid", "network"),
     expression_values = c("normalized", "scaled", "custom"),
     subset_feats = NULL,
     subset_genes = NULL,
     spatial_network_name = "Delaunay_network",
     network_smoothing = NULL,
     spatial_grid_name = "spatial_grid",
     min_cells_per_grid = 4,
     cor_method = c("pearson", "kendall", "spearman")
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``method``                    | method to use for spatial averaging  |
+-------------------------------+--------------------------------------+
| ``expression_values``         | gene expression values to use        |
+-------------------------------+--------------------------------------+
| ``subset_feats``              | subset of feats to use               |
+-------------------------------+--------------------------------------+
| ``subset_genes``              | deprecated, use ``subset_feats``     |
+-------------------------------+--------------------------------------+
| ``spatial_network_name``      | name of spatial network to use       |
+-------------------------------+--------------------------------------+
| ``network_smoothing``         | smoothing factor beteen 0 and 1      |
|                               | (default: automatic)                 |
+-------------------------------+--------------------------------------+
| ``spatial_grid_name``         | name of spatial grid to use          |
+-------------------------------+--------------------------------------+
| ``min_cells_per_grid``        | minimum number of cells to consider  |
|                               | a grid                               |
+-------------------------------+--------------------------------------+
| ``cor_method``                | correlation method                   |
+-------------------------------+--------------------------------------+

Details
-------

For method = network, it expects a fully connected spatial network. You
can make sure to create a fully connected network by setting minimal_k >
0 in the ```createSpatialNetwork`` <#createspatialnetwork>`__ function.

-  list(â€œ1. grid-averaging:â€) list(â€œaverage gene expression values
   within a predefined spatial gridâ€)

-  | list(â€œ2. network-averaging:â€) list(â€œsmoothens the gene expression
     matrix by averaging the expression within one cell:raw-latex:`\n`â€,
     â€ by using the neighbours within the predefined spatial network. b
     is a smoothening factor:raw-latex:`\n`â€œ,â€ that defaults to 1 - 1/k,
     where k is the median number of k-neighbors in
     the:raw-latex:`\n`â€œ,â€ selected spatial network. Setting b = 0 means
     no smoothing and b = 1 means no contribution:raw-latex:`\n`â€œ,â€ from
     its own expression.â€)
   | The spatCorObject can be further explored with
     showSpatialCorGenes()

Value
-----

returns a spatial correlation object: â€œspatCorObjectâ€

Seealso
-------

```showSpatialCorGenes`` <#showspatialcorgenes>`__
