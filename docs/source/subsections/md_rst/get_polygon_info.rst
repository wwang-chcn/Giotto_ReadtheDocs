================
get_polygon_info
================

:Date: 2022-09-20

``get_polygon_info``
====================

Get polygon info

Description
-----------

Get giotto polygon spatVector

Usage
-----

.. code:: r

   get_polygon_info(gobject, polygon_name = "cell", polygon_overlap = NULL)

Arguments
---------

=================== ===================================
Argument            Description
=================== ===================================
``gobject``         giotto object
``polygon_name``    name of polygons. Default “cell”
``polygon_overlap`` include polygon overlap information
=================== ===================================

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
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
