=====================
detectSpatialCorFeats
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L3109

.. role:: raw-latex(raw)
   :format: latex
..

Description
===========

Detect features that are spatially correlated

Usage
=====

.. code:: r

   detectSpatialCorFeats(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     spat_loc_name = "raw",
     method = c("grid", "network"),
     expression_values = c("normalized", "scaled", "custom"),
     subset_feats = NULL,
     spatial_network_name = "Delaunay_network",
     network_smoothing = NULL,
     spatial_grid_name = "spatial_grid",
     min_cells_per_grid = 4,
     cor_method = c("pearson", "kendall", "spearman")
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name for spatial locations           |
+-------------------------------+--------------------------------------+
| ``method``                    | method to use for spatial averaging  |
+-------------------------------+--------------------------------------+
| ``expression_values``         | gene expression values to use        |
+-------------------------------+--------------------------------------+
| ``subset_feats``              | subset of feats to use               |
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
=======

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
     showSpatialCorFeats()

Value
=====

returns a spatial correlation object: â€œspatCorObjectâ€

Seealso
=======

```showSpatialCorFeats`` <#showspatialcorfeats>`__
