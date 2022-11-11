=====================
get_expression_values
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L157


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
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``values``                    | expression values to extract         |
|                               | (e.g.Â â€œrawâ€, â€œnormalizedâ€, â€œscaledâ€) |
+-------------------------------+--------------------------------------+

Value
=====

expression matrix

Seealso
=======

Other expression accessor functions:
`set_expression_values <../md_rst/set_expression_values.html>`__

Other functions to get data from giotto object:

`get_NearestNetwork <../md_rst/get_NearestNetwork.html>`__

`get_dimReduction <../md_rst/get_dimReduction.html>`__

`get_feature_info <../md_rst/get_feature_info.html>`__

`get_giottoImage <../md_rst/get_giottoImage.html>`__

`get_polygon_info <../md_rst/get_polygon_info.html>`__

`get_spatialGrid <../md_rst/get_spatialGrid.html>`__

`get_spatialNetwork <../md_rst/get_spatialNetwork.html>`__

`get_spatial_locations <../md_rst/get_spatial_locations.html>`__
