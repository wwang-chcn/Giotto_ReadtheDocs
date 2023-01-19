==================
get_spatialNetwork
==================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1522



======================

Get spatial network

Description
-----------

Function to get a spatial network

Usage
-----

.. code:: r

   get_spatialNetwork(
     gobject,
     spat_unit = NULL,
     name = NULL,
     output = c("spatialNetworkObj", "networkDT", "networkDT_before_filter", "outputObj"),
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
| ``name``                      | name of spatial network              |
+-------------------------------+--------------------------------------+
| ``output``                    | object type to return as. Options:   |
|                               | ‘spatialNetworkObj’ (default),       |
|                               | ‘networkDT’ and                      |
|                               | ‘networkDT_before_filter’ for        |
|                               | data.table outputs.                  |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Seealso
-------

Other spatial network data accessor functions:
```set_spatialNetwork`` <#setspatialnetwork>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_multiomics`` <#getmultiomics>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
