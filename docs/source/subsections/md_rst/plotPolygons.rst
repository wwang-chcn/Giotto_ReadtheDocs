============
plotPolygons
============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/interactivity.R#L449



================

Plot stored polygons

Description
-----------

Plot stored polygons

Usage
-----

.. code:: r

   plotPolygons(
     gobject,
     polygon_name = "selections",
     x,
     spat_unit = "cell",
     polygons = NULL,
     ...
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A Giotto object with polygon         |
|                               | coordinates                          |
+-------------------------------+--------------------------------------+
| ``polygon_name``              | name of polygon selections           |
+-------------------------------+--------------------------------------+
| ``x``                         | A ggplot2, spatPlot or terra::rast   |
|                               | object                               |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``polygons``                  | character. Vector of polygon names   |
|                               | to plot. If NULL, all polygons are   |
|                               | plotted                              |
+-------------------------------+--------------------------------------+
| ``...``                       | Additional parameters passed to      |
|                               | ggplot2::geom_polygon() or           |
|                               | graphics::polygon                    |
+-------------------------------+--------------------------------------+

Value
-----

A ggplot2 image
