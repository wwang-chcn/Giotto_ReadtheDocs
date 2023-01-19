================
get_feature_info
================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1967



====================

Get feature info

Description
-----------

Get giotto points spatVector

Usage
-----

.. code:: r

   get_feature_info(gobject, feat_type = NULL, set_defaults = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Seealso
-------

Other feature info data accessor functions:
```set_feature_info`` <#setfeatureinfo>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_multiomics`` <#getmultiomics>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
