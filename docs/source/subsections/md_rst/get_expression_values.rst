=====================
get_expression_values
=====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L680



=========================

Get expression values

Description
-----------

Function to get expression values from giotto object

Usage
-----

.. code:: r

   get_expression_values(
     gobject,
     values = NULL,
     spat_unit = NULL,
     feat_type = NULL,
     output = c("exprObj", "matrix"),
     set_defaults = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``values``                    | expression values to extract         |
|                               | (e.g. “raw�, “normalized�, “scaled�) |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell�)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g. “rna�, “dna�,     |
|                               | “protein�)                           |
+-------------------------------+--------------------------------------+
| ``output``                    | what object type to retrieve the     |
|                               | expression as. Currently either      |
|                               | ‘matrix’ for the matrix object       |
|                               | contained in the exprObj or          |
|                               | ‘exprObj’ (default) for the exprObj  |
|                               | itself are allowed.                  |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Value
-----

expression matrix

Seealso
-------

Other expression accessor functions:
```set_expression_values`` <#setexpressionvalues>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_multiomics`` <#getmultiomics>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
