===============
get_spatialGrid
===============

:Date: ymd

``get_spatialGrid``
===================

Get spatial grid

Description
-----------

Function to get spatial grid

Usage
-----

.. code:: r

   get_spatialGrid(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     return_grid_Obj = FALSE
   )

Arguments
---------

=================== ===========================================
Argument            Description
=================== ===========================================
``gobject``         giotto object
``spat_unit``       spatial unit (e.g. “cell”)
``feat_type``       feature type (e.g. “rna”, “dna”, “protein”)
``name``            name of spatial grid
``return_grid_Obj`` return grid object (default = FALSE)
=================== ===========================================

Seealso
-------

Other spatial grid data accessor functions:
```set_spatialGrid`` <#setspatialgrid>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
