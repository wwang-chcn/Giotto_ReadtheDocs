==================
set_spatialNetwork
==================

:Date: 2022-09-20

``set_spatialNetwork``
======================

Set spatial network

Description
-----------

Function to set a spatial network

Usage
-----

.. code:: r

   set_spatialNetwork(gobject, spat_unit = NULL, name = NULL, spatial_network)

Arguments
---------

=================== ==========================
Argument            Description
=================== ==========================
``gobject``         giotto object
``spat_unit``       spatial unit (e.g. “cell”)
``name``            name of spatial network
``spatial_network`` spatial network
=================== ==========================

Value
-----

giotto object

Seealso
-------

Other spatial network data accessor functions:
```get_spatialNetwork`` <#getspatialnetwork>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
