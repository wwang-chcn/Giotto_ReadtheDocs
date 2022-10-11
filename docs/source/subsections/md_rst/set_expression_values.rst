=====================
set_expression_values
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L89

Description
===========

Function to set expression values for giotto object

Usage
=====

.. code:: r

   set_expression_values(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = "test",
     values
   )

Arguments
=========

============= ===========================================
Argument      Description
============= ===========================================
``gobject``   giotto object
``spat_unit`` spatial unit (e.g.Â â€œcellâ€)
``feat_type`` feature type (e.g.Â â€œrnaâ€, â€œdnaâ€, â€œproteinâ€)
``name``      name for the expression slot
``values``    matrix of expression values
============= ===========================================

Value
=====

giotto object

Seealso
=======

Other expression accessor functions:
```get_expression_values`` <#getexpressionvalues>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
