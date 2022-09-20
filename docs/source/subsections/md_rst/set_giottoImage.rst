===============
set_giottoImage
===============

:Date: ymd

``set_giottoImage``
===================

Set giotto image object

Description
-----------

Directly attach a giotto image to giotto object

Usage
-----

.. code:: r

   set_giottoImage(
     gobject = NULL,
     image = NULL,
     image_type = NULL,
     name = NULL,
     verbose = TRUE
   )

Arguments
---------

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
|                               | “image” or “largeImage”              |
+-------------------------------+--------------------------------------+
| ``name``                      | name of giotto image object          |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
-------

list(list(“Use with care!”)) This function directly attaches giotto
image objects to the gobject without further modifications of spatial
positioning values within the image object that are generally needed in
order for them to plot in the correct location relative to the other
modalities of spatial data. list() For the more general-purpose method
of attaching image objects, see ```addGiottoImage`` <#addgiottoimage>`__

Value
-----

giotto object

Seealso
-------

```addGiottoImage`` <#addgiottoimage>`__

Other image data accessor functions:
```get_giottoImage`` <#getgiottoimage>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
