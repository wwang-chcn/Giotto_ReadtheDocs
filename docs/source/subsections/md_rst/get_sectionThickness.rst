====================
get_sectionThickness
====================

:Date: 2022-09-22

Description
===========

get section thickness

Usage
=====

.. code:: r

   get_sectionThickness(
     gobject,
     thickness_unit = c("cell", "natural"),
     slice_thickness = 2,
     spatial_network_name = "Delaunay_network",
     cell_distance_estimate_method = c("mean", "median"),
     plane_equation = NULL
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | gobject                              |
+-------------------------------+--------------------------------------+
| ``thickness_unit``            | thickness_unit                       |
+-------------------------------+--------------------------------------+
| ``spatial_network_name``      | spatial_network_name                 |
+-------------------------------+--------------------------------------+
| ``ce                          | cell_distance_estimate_method        |
| ll_distance_estimate_method`` |                                      |
+-------------------------------+--------------------------------------+
| ``plane_equation``            | plane_equation                       |
+-------------------------------+--------------------------------------+
