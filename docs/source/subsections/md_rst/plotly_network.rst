==============
plotly_network
==============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L1874

===========

provide network segment to draw in 3D plot_ly()

Usage
=====

.. code:: r

   plotly_network(
     network,
     x = "sdimx_begin",
     y = "sdimy_begin",
     z = "sdimz_begin",
     x_end = "sdimx_end",
     y_end = "sdimy_end",
     z_end = "sdimz_end"
   )

Arguments
=========

=========== ========================
Argument    Description
=========== ========================
``network`` network object
``x``       default to â€œsdimx_beginâ€
``y``       default to â€œsdimy_beginâ€
``z``       default to â€œsdimz_beginâ€
``x_end``   default to â€œsdimx_endâ€
``y_end``   default to â€œsdimy_endâ€
``z_end``   default to â€œsdimz_endâ€
=========== ========================

Value
=====

edges in network as data.table()
