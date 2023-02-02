Get spatial locations
---------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L900
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to get a spatial location data.table

Usage
~~~~~

::

   get_spatial_locations(
     gobject,
     spat_unit = NULL,
     spat_loc_name = NULL,
     output = c("spatLocsObj", "data.table"),
     copy_obj = TRUE,
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
| ``spat_loc_name``                 | name of spatial locations         |
|                                   | (defaults to first name in        |
|                                   | spatial_locs slot, e.g. "raw")    |
+-----------------------------------+-----------------------------------+
| ``output``                        | what object type to get the       |
|                                   | spatial locations as. Default is  |
|                                   | as a 'spatLocsObj'. Returning as  |
|                                   | 'data.table' is also possible.    |
+-----------------------------------+-----------------------------------+
| ``copy_obj``                      | whether to copy/duplicate when    |
|                                   | getting the object (default =     |
|                                   | TRUE)                             |
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

data.table with coordinates or spatLocsObj depending on ``output``

See Also
~~~~~~~~

Other spatial location data accessor functions:
``set_spatial_locations()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_expression_values()``, ``get_feature_info()``,
``get_giottoImage()``, ``get_polygon_info()``, ``get_spatialGrid()``,
``get_spatialNetwork()``, ``get_spatial_enrichment()``
