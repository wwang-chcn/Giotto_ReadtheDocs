======================
set_spatial_enrichment
======================

:Date: 2022-09-22

Description
===========

Function to set a spatial enrichment slot

Usage
=====

.. code:: r

   set_spatial_enrichment(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     enrichm_name = "enrichment",
     spatenrichment
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell”)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g. “rna”, “dna”,     |
|                               | “protein”)                           |
+-------------------------------+--------------------------------------+
| ``enrichm_name``              | name of spatial enrichment results.  |
|                               | Default “DWLS”                       |
+-------------------------------+--------------------------------------+
| ``spatenrichment``            | spatial enrichment results           |
+-------------------------------+--------------------------------------+

Value
=====

giotto object

Seealso
=======

Other spatial enrichment data accessor functions:
```get_spatial_enrichment`` <#getspatialenrichment>`__

Other functions to set data in giotto object:
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
