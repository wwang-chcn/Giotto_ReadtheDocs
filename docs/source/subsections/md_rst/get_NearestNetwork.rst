==================
get_NearestNetwork
==================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L512


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
`set_NearestNetwork <../md_rst/set_NearestNetwork.html>`__

Other functions to set data in Giotto object:

`get_NearestNetwork <../md_rst/get_NearestNetwork.html>`__

`get_dimReduction <../md_rst/get_dimReduction.html>`__

`get_feature_info <../md_rst/get_feature_info.html>`__

`get_giottoImage <../md_rst/get_giottoImage.html>`__

`get_polygon_info <../md_rst/get_polygon_info.html>`__

`get_spatialGrid <../md_rst/get_spatialGrid.html>`__

`get_spatialNetwork <../md_rst/get_spatialNetwork.html>`__

`get_spatial_locations <../md_rst/get_spatial_locations.html>`__

