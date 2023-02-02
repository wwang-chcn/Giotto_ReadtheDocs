Set dimension reduction
-----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1188
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to set a dimension reduction slot

Usage
~~~~~

::

   set_dimReduction(
     gobject,
     dimObject,
     spat_unit = NULL,
     feat_type = NULL,
     reduction = c("cells", "genes"),
     reduction_method = c("pca", "umap", "tsne"),
     name = "pca",
     provenance = NULL,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``dimObject``                     | dimension object result to set    |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``reduction``                     | reduction on cells or features    |
+-----------------------------------+-----------------------------------+
| ``reduction_method``              | reduction method (e.g. "pca")     |
+-----------------------------------+-----------------------------------+
| ``name``                          | name of reduction results         |
+-----------------------------------+-----------------------------------+
| ``provenance``                    | provenance information (optional) |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other dimensional reduction data accessor functions:
``get_dimReduction()``

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_id()``,
``set_cell_metadata()``, ``set_expression_values()``, ``set_feat_id()``,
``set_feature_info()``, ``set_feature_metadata()``,
``set_giottoImage()``, ``set_polygon_info()``, ``set_spatialGrid()``,
``set_spatialNetwork()``, ``set_spatial_enrichment()``,
``set_spatial_locations()``
