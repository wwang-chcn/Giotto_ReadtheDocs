===============
get_giottoImage
===============

:Date: ymd

``get_giottoImage``
===================

Get giotto image object

Description
-----------

Get giotto image object from gobject

Usage
-----

.. code:: r

   get_giottoImage(
     gobject = NULL,
     image_type = c("image", "largeImage"),
     name = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``image_type``                | type of giotto image object. Either  |
|                               | “image” or “largeImage”              |
+-------------------------------+--------------------------------------+
| ``name``                      | name of a giotto image object        |
|                               | ```showGiottoIma                     |
|                               | geNames`` <#showgiottoimagenames>`__ |
+-------------------------------+--------------------------------------+

Value
-----

a giotto image object

Seealso
-------

Other image data accessor functions:
```set_giottoImage`` <#setgiottoimage>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
