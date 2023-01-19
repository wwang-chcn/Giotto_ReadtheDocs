======================
crossSectionGenePlot3D
======================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/cross_section.R#L684



==========================

crossSectionGenePlot3D

Description
-----------

Visualize cells and gene expression in a virtual cross section according
to spatial coordinates

Usage
-----

.. code:: r

   crossSectionGenePlot3D(
     gobject,
     crossSection_obj = NULL,
     name = NULL,
     spatial_network_name = "Delaunay_network",
     other_cell_color = alpha("lightgrey", 0),
     default_save_name = "crossSectionGenePlot3D",
     ...
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``crossSection_obj``          | cross section object as alternative  |
|                               | input. default = NULL.               |
+-------------------------------+--------------------------------------+
| ``name``                      | name of virtual cross section to use |
+-------------------------------+--------------------------------------+
| ``spatial_network_name``      | name of spatial network to use       |
+-------------------------------+--------------------------------------+
| ``other_cell_color``          | color of cells outside the cross     |
|                               | section. default = transparent.      |
+-------------------------------+--------------------------------------+
| ``default_save_name``         | default save name for saving, don’t  |
|                               | change, change save_name in          |
|                               | save_param                           |
+-------------------------------+--------------------------------------+
| ``...``                       | parameters for spatGenePlot3D        |
+-------------------------------+--------------------------------------+

Details
-------

Description of parameters.

Value
-----

ggplot
