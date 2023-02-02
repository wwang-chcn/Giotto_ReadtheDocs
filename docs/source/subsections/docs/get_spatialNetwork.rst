Get spatial network
-------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1522
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to get a spatial network

Usage
~~~~~

::

   get_spatialNetwork(
     gobject,
     spat_unit = NULL,
     name = NULL,
     output = c("spatialNetworkObj", "networkDT", "networkDT_before_filter", "outputObj"),
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
| ``output``                        | object type to return as.         |
|                                   | Options: 'spatialNetworkObj'      |
|                                   | (default), 'networkDT' and        |
|                                   | 'networkDT_before_filter' for     |
|                                   | data.table outputs.               |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

Other spatial network data accessor functions: ``set_spatialNetwork()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_expression_values()``, ``get_feature_info()``,
``get_giottoImage()``, ``get_polygon_info()``, ``get_spatialGrid()``,
``get_spatial_enrichment()``, ``get_spatial_locations()``
