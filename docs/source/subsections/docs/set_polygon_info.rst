Set polygon info
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1931
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Set giotto polygon spatVector

Usage
~~~~~

::

   set_polygon_info(gobject, polygon_name = "cell", gpolygon, verbose = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``polygon_name``                  | name of polygons. Default "cell"  |
+-----------------------------------+-----------------------------------+
| ``gpolygon``                      | giotto polygon                    |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | verbosity                         |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object

See Also
~~~~~~~~

Other polygon info data accessor functions: ``get_polygon_info()``

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_id()``,
``set_cell_metadata()``, ``set_dimReduction()``,
``set_expression_values()``, ``set_feat_id()``, ``set_feature_info()``,
``set_feature_metadata()``, ``set_giottoImage()``,
``set_spatialGrid()``, ``set_spatialNetwork()``,
``set_spatial_enrichment()``, ``set_spatial_locations()``
