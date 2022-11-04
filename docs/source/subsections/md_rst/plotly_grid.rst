===========
plotly_grid
===========

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L1915

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
``x_start``      default to â€œx_startâ€
``y_start``      default to â€œy_startâ€
``x_end``        default to â€œx_endâ€
``y_end``        default to â€œy_endâ€
================ =============================

Value
=====

edges in spatial grid as data.table()
