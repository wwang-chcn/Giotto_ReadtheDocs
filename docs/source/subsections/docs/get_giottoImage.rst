Get giotto image object
-----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2338
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Get giotto image object from gobject

Usage
~~~~~

::

   get_giottoImage(
     gobject = NULL,
     image_type = c("image", "largeImage"),
     name = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``image_type``                    | type of giotto image object.      |
|                                   | Either "image" or "largeImage"    |
+-----------------------------------+-----------------------------------+
| ``name``                          | name of a giotto image object     |
|                                   | ``showGiottoImageNames``          |
+-----------------------------------+-----------------------------------+

Value
~~~~~

a giotto image object

See Also
~~~~~~~~

Other image data accessor functions: ``set_giottoImage()``

Other functions to get data from giotto object:
``get_NearestNetwork()``, ``get_dimReduction()``,
``get_expression_values()``, ``get_feature_info()``,
``get_polygon_info()``, ``get_spatialGrid()``, ``get_spatialNetwork()``,
``get_spatial_enrichment()``, ``get_spatial_locations()``
