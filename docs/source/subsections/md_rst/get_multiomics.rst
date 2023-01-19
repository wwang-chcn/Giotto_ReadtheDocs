==============
get_multiomics
==============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/wnn.R#L616

==================

Get multiomics integration results

Description
-----------

Get a multiomics integration result from a Giotto object

Usage
-----

.. code:: r

   get_multiomics(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     integration_method = "WNN",
     result_name = "theta_weighted_matrix"
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A Giotto object                      |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. ‘cell’)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | integrated feature type              |
|                               | (e.g. ‘rna_protein’)                 |
+-------------------------------+--------------------------------------+
| ``integration_method``        | multiomics integration method used.  |
|                               | Default = ‘WNN’                      |
+-------------------------------+--------------------------------------+
| ``result_name``               | Default = ‘theta_weighted_matrix’    |
+-------------------------------+--------------------------------------+

Value
-----

A multiomics integration result (e.g. theta_weighted_matrix from WNN)

Seealso
-------

Other multiomics accessor functions:
```set_multiomics`` <#setmultiomics>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
