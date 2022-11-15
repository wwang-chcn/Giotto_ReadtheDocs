=====================
get_spatial_locations
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L264


Description
===========

Function to get a spatial location data.table

Usage
=====

.. code:: r

   get_spatial_locations(gobject, spat_unit = NULL, spat_loc_name = NULL)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | name of spatial locations (defaults  |
|                               | to first name in spatial_locs slot,  |
|                               | e.g.Â â€œrawâ€)                          |
+-------------------------------+--------------------------------------+

Value
=====

data.table with coordinates

Seealso
=======

Other spatial location data accessor functions:
`set_spatial_locations <../md_rst/set_spatial_locations.html>`__

Other functions to get data from giotto object:

`get_NearestNetwork <../md_rst/get_NearestNetwork.html>`__

`get_dimReduction <../md_rst/get_dimReduction.html>`__

`get_feature_info <../md_rst/get_feature_info.html>`__

`get_giottoImage <../md_rst/get_giottoImage.html>`__

`get_polygon_info <../md_rst/get_polygon_info.html>`__

`get_spatialGrid <../md_rst/get_spatialGrid.html>`__

`get_spatialNetwork <../md_rst/get_spatialNetwork.html>`__

`get_spatial_locations <../md_rst/get_spatial_locations.html>`__
