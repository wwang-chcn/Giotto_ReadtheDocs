Set spatial network
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1596
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to set a spatial network

Usage
~~~~~

::

   set_spatialNetwork(
     gobject,
     spat_unit = NULL,
     name = NULL,
     spatial_network,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``name``                          | name of spatial network           |
+-----------------------------------+-----------------------------------+
| ``spatial_network``               | spatial network                   |
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

Other spatial network data accessor functions: ``get_spatialNetwork()``

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_id()``,
``set_cell_metadata()``, ``set_dimReduction()``,
``set_expression_values()``, ``set_feat_id()``, ``set_feature_info()``,
``set_feature_metadata()``, ``set_giottoImage()``,
``set_polygon_info()``, ``set_spatialGrid()``,
``set_spatial_enrichment()``, ``set_spatial_locations()``
