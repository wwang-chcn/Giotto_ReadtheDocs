================
set_polygon_info
================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1931



====================

Set polygon info

Description
-----------

Set giotto polygon spatVector

Usage
-----

.. code:: r

   set_polygon_info(gobject, polygon_name = "cell", gpolygon, verbose = TRUE)

Arguments
---------

================ ================================
Argument         Description
================ ================================
``gobject``      giotto object
``polygon_name`` name of polygons. Default â€œcellâ€
``gpolygon``     giotto polygon
``verbose``      verbosity
================ ================================

Value
-----

giotto object

Seealso
-------

Other polygon info data accessor functions:
```get_polygon_info`` <#getpolygoninfo>`__

Other functions to set data in giotto object:
```get_cell_id`` <#getcellid>`__ , ```get_feat_id`` <#getfeatid>`__ ,
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_cell_id`` <#setcellid>`__ ,
```set_cell_metadata`` <#setcellmetadata>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feat_id`` <#setfeatid>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_feature_metadata`` <#setfeaturemetadata>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_multiomics`` <#setmultiomics>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
