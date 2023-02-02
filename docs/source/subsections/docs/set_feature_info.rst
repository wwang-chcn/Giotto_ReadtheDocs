Set feature info
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2011
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Set giotto polygon spatVector for features

Usage
~~~~~

::

   set_feature_info(gobject, feat_type = NULL, gpolygon, verbose = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``gpolygon``                      | giotto polygon                    |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other feature info data accessor functions: ``get_feature_info()``

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_id()``,
``set_cell_metadata()``, ``set_dimReduction()``,
``set_expression_values()``, ``set_feat_id()``,
``set_feature_metadata()``, ``set_giottoImage()``,
``set_polygon_info()``, ``set_spatialGrid()``, ``set_spatialNetwork()``,
``set_spatial_enrichment()``, ``set_spatial_locations()``
