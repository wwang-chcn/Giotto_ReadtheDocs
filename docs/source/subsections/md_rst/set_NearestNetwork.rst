==================
set_NearestNetwork
==================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1417



======================

Set nearest network

Description
-----------

Set a NN-network for a Giotto object

Usage
-----

.. code:: r

   set_NearestNetwork(
     gobject,
     nn_network,
     spat_unit = NULL,
     feat_type = NULL,
     nn_network_to_use = "sNN",
     network_name = "sNN.pca",
     provenance = NULL,
     verbose = TRUE,
     set_defaults = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``nn_network``                | nnNetObj or igraph nearest network   |
|                               | object. Data.table not yet           |
|                               | supported.                           |
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
| ``provenance``                | provenance information (optional)    |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Value
-----

giotto object

Seealso
-------

Other expression space nearest network accessor functions:
```get_NearestNetwork`` <#getnearestnetwork>`__

Other functions to set data in giotto object:
```get_cell_id`` <#getcellid>`__ , ```get_feat_id`` <#getfeatid>`__ ,
```set_cell_id`` <#setcellid>`__ ,
```set_cell_metadata`` <#setcellmetadata>`__ ,
```set_dimReduction`` <#setdimreduction>`__ ,
```set_expression_values`` <#setexpressionvalues>`__ ,
```set_feat_id`` <#setfeatid>`__ ,
```set_feature_info`` <#setfeatureinfo>`__ ,
```set_feature_metadata`` <#setfeaturemetadata>`__ ,
```set_giottoImage`` <#setgiottoimage>`__ ,
```set_multiomics`` <#setmultiomics>`__ ,
```set_polygon_info`` <#setpolygoninfo>`__ ,
```set_spatialGrid`` <#setspatialgrid>`__ ,
```set_spatialNetwork`` <#setspatialnetwork>`__ ,
```set_spatial_enrichment`` <#setspatialenrichment>`__ ,
```set_spatial_locations`` <#setspatiallocations>`__
