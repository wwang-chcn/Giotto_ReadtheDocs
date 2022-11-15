=====================
set_spatial_locations
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L330


Description
===========

Function to set a spatial location slot

Usage
=====

.. code:: r

   set_spatial_locations(
     gobject,
     spat_unit = NULL,
     spat_loc_name = "raw",
     spatlocs,
     verbose = TRUE
   )

Arguments
=========

================= ========================================
Argument          Description
================= ========================================
``gobject``       giotto object
``spat_unit``     spatial unit (e.g.Â â€œcellâ€)
``spat_loc_name`` name of spatial locations, default â€œrawâ€
``spatlocs``      spatial locations
``verbose``       be verbose
================= ========================================

Value
=====

giotto object

Seealso
=======

Other spatial location data accessor functions:
`get_spatial_locations <../md_rst/get_spatial_locations.html>`__

Other functions to get data from Giotto object:

`get_NearestNetwork <../md_rst/get_NearestNetwork.html>`__

`get_dimReduction <../md_rst/get_dimReduction.html>`__

`get_feature_info <../md_rst/get_feature_info.html>`__

`get_giottoImage <../md_rst/get_giottoImage.html>`__

`get_polygon_info <../md_rst/get_polygon_info.html>`__

`get_spatialGrid <../md_rst/get_spatialGrid.html>`__

`get_spatialNetwork <../md_rst/get_spatialNetwork.html>`__

`get_spatial_locations <../md_rst/get_spatial_locations.html>`__
