===============
get_giottoImage
===============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1347


Description
===========

Get giotto image object from gobject

Usage
=====

.. code:: r

   get_giottoImage(
     gobject = NULL,
     image_type = c("image", "largeImage"),
     name = NULL
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``image_type``                | type of giotto image object. Either  |
|                               | â€œimageâ€ or â€œlargeImageâ€              |
+-------------------------------+--------------------------------------+
| ``name``                      | name of a giotto image object        |
|                               | ```showGiottoIma                     |
|                               | geNames`` <#showgiottoimagenames>`__ |
+-------------------------------+--------------------------------------+

Value
=====

a giotto image object

Seealso
=======

Other image data accessor functions:
```set_giottoImage`` <#setgiottoimage>`__

Other functions to get data from giotto object:
`get_NearestNetwork <../md_rst/get_NearestNetwork.html>`__
`get_dimReduction <../md_rst/get_dimReduction.html>`__
`get_expression_values <../md_rst/get_expression_values.html>`__
`get_feature_info <../md_rst/get_feature_info.html>`__
`get_polygon_info <../md_rst/get_polygon_info.html>`__
`get_spatialGrid <../md_rst/get_spatialGrid.html>`__
`get_spatialNetwork <../md_rst/get_spatialNetwork.html>`__
`get_spatial_enrichment <../md_rst/get_spatial_enrichment.html>`__
`get_spatial_locations <../md_rst/get_spatial_locations.html>`__
