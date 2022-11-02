================
get_dimReduction
================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L378


Description
===========

Function to get a dimension reduction object

Usage
=====

.. code:: r

   get_dimReduction(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     reduction = c("cells", "feats"),
     reduction_method = c("pca", "umap", "tsne"),
     name = "pca",
     return_dimObj = FALSE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``reduction``                 | reduction on cells or features       |
|                               | (e.g.Â â€œcellsâ€, â€œfeatsâ€)              |
+-------------------------------+--------------------------------------+
| ``reduction_method``          | reduction method (e.g.Â â€œpcaâ€,        |
|                               | â€œumapâ€, â€œtsneâ€)                      |
+-------------------------------+--------------------------------------+
| ``name``                      | name of reduction results            |
+-------------------------------+--------------------------------------+
| ``return_dimObj``             | return full dimension object result. |
|                               | Default = FALSE                      |
+-------------------------------+--------------------------------------+

Value
=====

dim reduction coordinates (default) or dim reduction object

Seealso
=======

Other dimensional reduction data accessor functions:
```set_dimReduction`` <#setdimreduction>`__

Other functions to get data from giotto object:
```get_NearestNetwork`` <#getnearestnetwork>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
