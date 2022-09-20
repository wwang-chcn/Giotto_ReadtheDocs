===============
set_spatialGrid
===============

:Date: 2022-09-20

``set_spatialGrid``
===================

Set spatial grid

Description
-----------

Function to set a spatial grid

Usage
-----

.. code:: r

   set_spatialGrid(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     spatial_grid
   )

Arguments
---------

================ ===========================================
Argument         Description
================ ===========================================
``gobject``      giotto object
``spat_unit``    spatial unit (e.g. “cell”)
``feat_type``    feature type (e.g. “rna”, “dna”, “protein”)
``name``         name of spatial grid
``spatial_grid`` spatial grid object
================ ===========================================

Value
-----

giotto object

Seealso
-------

Other spatial grid data accessor functions:
```get_spatialGrid`` <#getspatialgrid>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
