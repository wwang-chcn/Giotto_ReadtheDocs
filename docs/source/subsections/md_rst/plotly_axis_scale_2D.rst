====================
plotly_axis_scale_2D
====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L2005

===========

adjust the axis scale in 2D plotly plot

Usage
=====

.. code:: r

   plotly_axis_scale_2D(
     cell_locations,
     sdimx = NULL,
     sdimy = NULL,
     mode = c("cube", "real", "custom"),
     custom_ratio = NULL
   )

Arguments
=========

================== ===============================
Argument           Description
================== ===============================
``cell_locations`` spatial_loc in giotto object
``sdimx``          x axis of cell spatial location
``sdimy``          y axis of cell spatial location
``mode``           axis adjustment mode
``custom_ratio``   set the ratio artificially
================== ===============================

Value
=====

edges in spatial grid as data.table()
