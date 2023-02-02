Get spatial grid
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1678
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to get spatial grid

Usage
~~~~~

::

   get_spatialGrid(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     return_grid_Obj = FALSE,
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
| ``name``                          | name of spatial grid              |
+-----------------------------------+-----------------------------------+
| ``return_grid_Obj``               | return grid object (default =     |
|                                   | FALSE)                            |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

Other spatial grid data accessor functions: ``set_spatialGrid()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_expression_values()``, ``get_feature_info()``,
``get_giottoImage()``, ``get_polygon_info()``, ``get_spatialNetwork()``,
``get_spatial_enrichment()``, ``get_spatial_locations()``
