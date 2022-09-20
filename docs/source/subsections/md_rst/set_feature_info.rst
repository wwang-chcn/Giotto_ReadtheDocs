================
set_feature_info
================

:Date: 2022-09-20

``set_feature_info``
====================

Set feature info

Description
-----------

Set giotto polygon spatVector for features

Usage
-----

.. code:: r

   set_feature_info(gobject, feat_type = NULL, gpolygon)

Arguments
---------

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``feat_type`` name of feat (e.g. “rna”, “dna”, “protein”)
``gpolygon``  giotto polygon
============= ===========================================

Value
-----

giotto object

Seealso
-------

Other feature info data accessor functions:
```get_feature_info`` <#getfeatureinfo>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
