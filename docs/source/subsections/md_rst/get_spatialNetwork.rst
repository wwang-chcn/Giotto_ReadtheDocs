==================
get_spatialNetwork
==================

:Date: 2022-09-20

``get_spatialNetwork``
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
     return_network_Obj = FALSE
   )

Arguments
---------

====================== =======================================
Argument               Description
====================== =======================================
``gobject``            giotto object
``spat_unit``          spatial unit (e.g. “cell”)
``name``               name of spatial network
``return_network_Obj`` return network object (default = FALSE)
====================== =======================================

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
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
