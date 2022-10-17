===========
plotly_grid
===========

:Date: 2022-10-06

Description
===========

provide grid segment to draw in plot_ly()

Usage
=====

.. code:: r

   plotly_grid(
     spatial_grid,
     x_start = "x_start",
     y_start = "y_start",
     x_end = "x_end",
     y_end = "y_end"
   )

Arguments
=========

================ =============================
Argument         Description
================ =============================
``spatial_grid`` spatial_grid in giotto object
``x_start``      default to “x_start”
``y_start``      default to “y_start”
``x_end``        default to “x_end”
``y_end``        default to “y_end”
================ =============================

Value
=====

edges in spatial grid as data.table()
