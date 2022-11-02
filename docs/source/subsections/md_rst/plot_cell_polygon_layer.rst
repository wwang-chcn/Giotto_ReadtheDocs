=======================
plot_cell_polygon_layer
=======================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_in_situ_visuals.R#L13

===========

Low level function to plot a polygon

Usage
=====

.. code:: r

   plot_cell_polygon_layer(
     ggobject = NULL,
     polygon_dt,
     polygon_grouping = "poly_ID",
     sdimx = "x",
     sdimy = "y",
     fill = NULL,
     poly_fill_gradient = c("blue", "white", "red"),
     fill_gradient_midpoint = NULL,
     fill_as_factor = TRUE,
     fill_code = NULL,
     bg_color = "black",
     color = "black",
     alpha = 0.5,
     size = 2
   )

Details
=======

This functions plots a polygon based on spatial cell information. This
is most likely a polygon that corresponds to the cell shape.

Value
=====

ggplot
