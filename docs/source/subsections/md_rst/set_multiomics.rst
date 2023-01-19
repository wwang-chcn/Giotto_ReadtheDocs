==============
set_multiomics
==============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/wnn.R#L563

==================

Set multiomics integration results

Description
-----------

Set a multiomics integration result in a Giotto object

Usage
-----

.. code:: r

   set_multiomics(
     gobject,
     result,
     spat_unit = NULL,
     feat_type = NULL,
     integration_method = "WNN",
     result_name = "theta_weighted_matrix",
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A Giotto object                      |
+-------------------------------+--------------------------------------+
| ``result``                    | A matrix or result from multiomics   |
|                               | integration (e.g. theta weighted     |
|                               | values from runWNN)                  |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. ‘cell’)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | (e.g. ‘rna_protein’)                 |
+-------------------------------+--------------------------------------+
| ``integration_method``        | multiomics integration method used.  |
|                               | Default = ‘WNN’                      |
+-------------------------------+--------------------------------------+
| ``result_name``               | Default = ‘theta_weighted_matrix’    |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Value
-----

A giotto object

Seealso
-------

Other multiomics accessor functions:
```get_multiomics`` <#getmultiomics>`__

Other functions to set data in giotto object:
```get_cell_id`` <#getcellid>`__ , ```get_feat_id`` <#getfeatid>`__ ,
```set_NearestNetwork`` <#setnearestnetwork>`__ ,
```set_cell_id`` <#setcellid>`__ ,
```set_cell_metadata`` <#setcellmetadata>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feat_id`` <#setfeatid>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_feature_metadata`` <#setfeaturemetadata>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
