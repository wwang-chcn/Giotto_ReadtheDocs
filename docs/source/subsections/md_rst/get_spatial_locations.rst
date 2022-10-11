=====================
get_spatial_locations
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L135

Description
===========

Function to get a spatial location data.table

Usage
=====

.. code:: r

   get_spatial_locations(gobject, spat_unit = NULL, spat_loc_name = NULL)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell�)           |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name of spatial locations (defaults  |
|                               | to first name in spatial_locs slot,  |
|                               | e.g. “raw�)                          |
+-------------------------------+--------------------------------------+

Value
=====

data.table with coordinates

Seealso
=======

Other spatial location data accessor functions:
```set_spatial_locations`` <#setspatiallocations>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__
