=====================
get_expression_values
=====================

:Date: 2022-10-06

Description
===========

Function to get expression values from giotto object

Usage
=====

.. code:: r

   get_expression_values(gobject, spat_unit = NULL, feat_type = NULL, values)

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
| ``values``                    | expression values to extract         |
|                               | (e.g. “raw”, “normalized”, “scaled”) |
+-------------------------------+--------------------------------------+

Value
=====

expression matrix

Seealso
=======

Other expression accessor functions:
```set_expression_values`` <#setexpressionvalues>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
