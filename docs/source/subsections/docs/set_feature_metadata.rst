Set feature metadata
--------------------

Description
~~~~~~~~~~~

Function to set feature metadata into giotto object

Usage
~~~~~

::

   set_feature_metadata(
     gobject,
     metadata,
     spat_unit = NULL,
     feat_type = NULL,
     provenance = NULL,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``metadata``                      | featMetaObj or data.table object  |
|                                   | containing feature metadata.      |
|                                   | Setting NULL will remove the      |
|                                   | object.                           |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
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

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_id()``,
``set_cell_metadata()``, ``set_dimReduction()``,
``set_expression_values()``, ``set_feat_id()``, ``set_feature_info()``,
``set_giottoImage()``, ``set_polygon_info()``, ``set_spatialGrid()``,
``set_spatialNetwork()``, ``set_spatial_enrichment()``,
``set_spatial_locations()``
