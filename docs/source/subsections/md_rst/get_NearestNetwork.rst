==================
get_NearestNetwork
==================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L383

Description
===========

Get a NN-network from a Giotto object

Usage
=====

.. code:: r

   get_NearestNetwork(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     nn_network_to_use = NULL,
     network_name = NULL,
     output = c("igraph", "data.table")
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
| ``nn_network_to_use``         | â€œkNNâ€ or â€œsNNâ€                       |
+-------------------------------+--------------------------------------+
| ``network_name``              | name of NN network to be used        |
+-------------------------------+--------------------------------------+
| ``output``                    | return a igraph or data.table        |
|                               | object. Default â€˜igraphâ€™             |
+-------------------------------+--------------------------------------+

Value
=====

igraph or data.table object

Seealso
=======

Other expression space nearest network accessor functions:
```set_NearestNetwork`` <#setnearestnetwork>`__

Other functions to get data from giotto object:
```get_dimReduction`` <#getdimreduction>`__ ,
```get_expression_values`` <#getexpressionvalues>`__ ,
```get_feature_info`` <#getfeatureinfo>`__ ,
```get_giottoImage`` <#getgiottoimage>`__ ,
```get_polygon_info`` <#getpolygoninfo>`__ ,
```get_spatialGrid`` <#getspatialgrid>`__ ,
```get_spatialNetwork`` <#getspatialnetwork>`__ ,
```get_spatial_enrichment`` <#getspatialenrichment>`__ ,
```get_spatial_locations`` <#getspatiallocations>`__
