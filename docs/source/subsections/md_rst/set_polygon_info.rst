================
set_polygon_info
================

:Date: 2022-10-06

Description
===========

Set giotto polygon spatVector

Usage
=====

.. code:: r

   set_polygon_info(gobject, polygon_name = "cell", gpolygon, verbose = TRUE)

Arguments
=========

================ ================================
Argument         Description
================ ================================
``gobject``      giotto object
``polygon_name`` name of polygons. Default “cell”
``gpolygon``     giotto polygon
``verbose``      verbosity
================ ================================

Value
=====

giotto object

Seealso
=======

Other polygon info data accessor functions:
```get_polygon_info`` <#getpolygoninfo>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
