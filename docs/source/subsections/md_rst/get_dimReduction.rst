Get dimension reduction
-----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1102
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to get a dimension reduction object

Usage
~~~~~

::

   get_dimReduction(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     reduction = c("cells", "feats"),
     reduction_method = c("pca", "umap", "tsne"),
     name = "pca",
     output = c("dimObj", "data.table"),
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``reduction``                     | reduction on cells or features    |
|                                   | (e.g. "cells", "feats")           |
+-----------------------------------+-----------------------------------+
| ``reduction_method``              | reduction method (e.g. "pca",     |
|                                   | "umap", "tsne")                   |
+-----------------------------------+-----------------------------------+
| ``name``                          | name of reduction results         |
+-----------------------------------+-----------------------------------+
| ``output``                        | object type to return as. Either  |
|                                   | 'dimObj' (default) or 'data.table |
|                                   | of the embedding coordinates.     |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

dim reduction object (default) or dim reduction coordinates

See Also
~~~~~~~~

Other dimensional reduction data accessor functions:
``set_dimReduction()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_expression_values()``,
``get_feature_info()``, ``get_giottoImage()``, ``get_polygon_info()``,
``get_spatialGrid()``, ``get_spatialNetwork()``,
``get_spatial_enrichment()``, ``get_spatial_locations()``
