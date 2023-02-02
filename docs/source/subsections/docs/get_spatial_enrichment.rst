Get spatial enrichment
----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2050
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to get a spatial enrichment data.table

Usage
~~~~~

::

   get_spatial_enrichment(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     enrichm_name = "DWLS",
     output = c("spatEnrObj", "data.table"),
     copy_obj = TRUE,
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
| ``enrichm_name``                  | name of spatial enrichment        |
|                                   | results. Default "DWLS"           |
+-----------------------------------+-----------------------------------+
| ``output``                        | what format in which to get       |
|                                   | information (e.g. "data.table")   |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

data.table with fractions

See Also
~~~~~~~~

Other spatial enrichment data accessor functions:
``set_spatial_enrichment()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_expression_values()``, ``get_feature_info()``,
``get_giottoImage()``, ``get_polygon_info()``, ``get_spatialGrid()``,
``get_spatialNetwork()``, ``get_spatial_locations()``
