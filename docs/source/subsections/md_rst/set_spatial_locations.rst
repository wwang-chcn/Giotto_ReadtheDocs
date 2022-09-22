=====================
set_spatial_locations
=====================

:Date: 2022-09-22

Description
===========

Function to set a spatial location slot

Usage
=====

.. code:: r

   set_spatial_locations(
     gobject,
     spat_unit = NULL,
     spat_loc_name = "raw",
     spatlocs,
     verbose = TRUE
   )

Arguments
=========

================= ========================================
Argument          Description
================= ========================================
``gobject``       giotto object
``spat_unit``     spatial unit (e.g. “cell”)
``spat_loc_name`` name of spatial locations, default “raw”
``spatlocs``      spatial locations
``verbose``       be verbose
================= ========================================

Value
=====

giotto object

Seealso
=======

Other spatial location data accessor functions:
```get_spatial_locations`` <#getspatiallocations>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__
