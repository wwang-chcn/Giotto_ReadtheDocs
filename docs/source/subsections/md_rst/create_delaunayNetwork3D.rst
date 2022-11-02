========================
create_delaunayNetwork3D
========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_structures.R#L925

===========

Create a spatial 3D Delaunay network.

Usage
=====

.. code:: r

   create_delaunayNetwork3D(
     gobject,
     method = "delaunayn_geometry",
     spat_unit = NULL,
     spat_loc_name = "raw",
     sdimx = "sdimx",
     sdimy = "sdimy",
     sdimz = "sdimz",
     name = "delaunay_network_3D",
     maximum_distance = "auto",
     minimum_k = 0,
     options = "Pp",
     return_gobject = TRUE,
     ...
   )
