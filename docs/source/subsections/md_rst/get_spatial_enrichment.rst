======================
get_spatial_enrichment
======================

:Date: ymd

``get_spatial_enrichment``
==========================

Get spatial enrichment

Description
-----------

Function to get a spatial enrichment data.table

Usage
-----

.. code:: r

   get_spatial_enrichment(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     enrichm_name = "DWLS"
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.”cell”)            |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g. “rna”, “dna”,     |
|                               | “protein”)                           |
+-------------------------------+--------------------------------------+
| ``enrichm_name``              | name of spatial enrichment results.  |
|                               | Default “DWLS”                       |
+-------------------------------+--------------------------------------+

Value
-----

data.table with fractions

Seealso
-------

Other spatial enrichment data accessor functions:
```set_spatial_enrichment`` <#setspatialenrichment>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
