Get polygon info
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1865
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Get giotto polygon spatVector

Usage
~~~~~

::

   get_polygon_info(
     gobject,
     polygon_name = NULL,
     polygon_overlap = NULL,
     return_giottoPolygon = FALSE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``polygon_name``                  | name of polygons. Default "cell"  |
+-----------------------------------+-----------------------------------+
| ``polygon_overlap``               | include polygon overlap           |
|                                   | information                       |
+-----------------------------------+-----------------------------------+
| ``return_giottoPolygon``          | (Defaults to FALSE) Return as     |
|                                   | giottoPolygon S4 object           |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

Other polygon info data accessor functions: ``set_polygon_info()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_expression_values()``, ``get_feature_info()``,
``get_giottoImage()``, ``get_spatialGrid()``, ``get_spatialNetwork()``,
``get_spatial_enrichment()``, ``get_spatial_locations()``
