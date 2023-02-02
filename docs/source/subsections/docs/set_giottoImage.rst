Set giotto image object
-----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2378
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Directly attach a giotto image to giotto object

Usage
~~~~~

::

   set_giottoImage(
     gobject = NULL,
     image = NULL,
     image_type = NULL,
     name = NULL,
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``image``                         | giotto image object to be         |
|                                   | attached without modification to  |
|                                   | the giotto object                 |
+-----------------------------------+-----------------------------------+
| ``image_type``                    | type of giotto image object.      |
|                                   | Either "image" or "largeImage"    |
+-----------------------------------+-----------------------------------+
| ``name``                          | name of giotto image object       |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

| **Use with care!** This function directly attaches giotto image
  objects to the gobject without further modifications of spatial
  positioning values within the image object that are generally needed
  in order for them to plot in the correct location relative to the
  other modalities of spatial data.
| For the more general-purpose method of attaching image objects, see
  ``addGiottoImage``

Value
~~~~~

giotto object

See Also
~~~~~~~~

``addGiottoImage``

Other image data accessor functions: ``get_giottoImage()``

Other functions to set data in giotto object: ``get_cell_id()``,
``get_feat_id()``, ``set_NearestNetwork()``, ``set_cell_id()``,
``set_cell_metadata()``, ``set_dimReduction()``,
``set_expression_values()``, ``set_feat_id()``, ``set_feature_info()``,
``set_feature_metadata()``, ``set_polygon_info()``,
``set_spatialGrid()``, ``set_spatialNetwork()``,
``set_spatial_enrichment()``, ``set_spatial_locations()``
