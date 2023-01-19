================
set_feature_info
================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2011



====================

Set feature info

Description
-----------

Set giotto polygon spatVector for features

Usage
-----

.. code:: r

   set_feature_info(gobject, feat_type = NULL, gpolygon, verbose = TRUE)

Arguments
---------

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``feat_type`` feature type (e.g.Â â€œrnaâ€, â€œdnaâ€, â€œproteinâ€)
``gpolygon``  giotto polygon
``verbose``   be verbose
============= ===========================================

Value
-----

giotto object

Seealso
-------

Other feature info data accessor functions:
```get_feature_info`` <#getfeatureinfo>`__

Other functions to set data in giotto object:
```get_cell_id`` <#getcellid>`__ , ```get_feat_id`` <#getfeatid>`__ ,
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_cell_id`` <#setcellid>`__ ,
```set_cell_metadata`` <#setcellmetadata>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feat_id`` <#setfeatid>`__ ,
```set_feature_metadata`` <#setfeaturemetadata>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_multiomics`` <#setmultiomics>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
