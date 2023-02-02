Get feature info
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1967
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Get giotto points spatVector

Usage
~~~~~

::

   get_feature_info(gobject, feat_type = NULL, set_defaults = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

Other feature info data accessor functions: ``set_feature_info()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_expression_values()``, ``get_giottoImage()``,
``get_polygon_info()``, ``get_spatialGrid()``, ``get_spatialNetwork()``,
``get_spatial_enrichment()``, ``get_spatial_locations()``
