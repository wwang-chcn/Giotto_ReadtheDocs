================
get_polygon_info
================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1865



====================

Get polygon info

Description
-----------

Get giotto polygon spatVector

Usage
-----

.. code:: r

   get_polygon_info(
     gobject,
     polygon_name = NULL,
     polygon_overlap = NULL,
     return_giottoPolygon = FALSE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``polygon_name``              | name of polygons. Default â€œcellâ€     |
+-------------------------------+--------------------------------------+
| ``polygon_overlap``           | include polygon overlap information  |
+-------------------------------+--------------------------------------+
| ``return_giottoPolygon``      | (Defaults to FALSE) Return as        |
|                               | giottoPolygon S4 object              |
+-------------------------------+--------------------------------------+

Seealso
-------

Other polygon info data accessor functions:
```set_polygon_info`` <#setpolygoninfo>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_multiomics`` <#getmultiomics>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
