=====================
get_spatial_locations
=====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L900



=========================

Get spatial locations

Description
-----------

Function to get a spatial location data.table

Usage
-----

.. code:: r

   get_spatial_locations(
     gobject,
     spat_unit = NULL,
     spat_loc_name = NULL,
     output = c("spatLocsObj", "data.table"),
     copy_obj = TRUE,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
---------

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
| ``output``                    | what object type to get the spatial  |
|                               | locations as. Default is as a        |
|                               | ‘spatLocsObj’. Returning as          |
|                               | ‘data.table’ is also possible.       |
+-------------------------------+--------------------------------------+
| ``copy_obj``                  | whether to copy/duplicate when       |
|                               | getting the object (default = TRUE)  |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Value
-----

data.table with coordinates or spatLocsObj depending on ``output``

Seealso
-------

Other spatial location data accessor functions:
```set_spatial_locations`` <#setspatiallocations>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_multiomics`` <#getmultiomics>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__
