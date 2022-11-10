===============
set_giottoImage
===============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1387


Description
===========

Directly attach a giotto image to giotto object

Usage
=====

.. code:: r

   set_giottoImage(
     gobject = NULL,
     image = NULL,
     image_type = NULL,
     name = NULL,
     verbose = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``image``                     | giotto image object to be attached   |
|                               | without modification to the giotto   |
|                               | object                               |
+-------------------------------+--------------------------------------+
| ``image_type``                | type of giotto image object. Either  |
|                               | â€œimageâ€ or â€œlargeImageâ€              |
+-------------------------------+--------------------------------------+
| ``name``                      | name of giotto image object          |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
=======

list(list(â€œUse with care!â€)) This function directly attaches giotto
image objects to the gobject without further modifications of spatial
positioning values within the image object that are generally needed in
order for them to plot in the correct location relative to the other
modalities of spatial data. list() For the more general-purpose method
of attaching image objects, see ```addGiottoImage`` <#addgiottoimage>`__

Value
=====

giotto object

See also
=======

`addGiottoImage <../md_rst/addGiottoImage.html>`__

Other image data accessor functions:
`get_giottoImage <../md_rst/get_giottoImage.html>`__

Other functions to set data in giotto object:
`set_NearestNetwork <../md_rst/set_NearestNetwork.html>`__
`set_dimReduction <../md_rst/set_dimReduction.html>`__
`set_expression_values <../md_rst/set_expression_values.html>`__
`set_feature_info <../md_rst/set_feature_info.html>`__
`set_polygon_info <../md_rst/set_polygon_info.html>`__
`set_spatialGrid <../md_rst/set_spatialGrid.html>`__
`set_spatialNetwork <../md_rst/set_spatialNetwork.html>`__
`set_spatial_enrichment <../md_rst/set_spatial_enrichment.html>`__
`set_spatial_locations <../md_rst/set_spatial_locations.html>`__
