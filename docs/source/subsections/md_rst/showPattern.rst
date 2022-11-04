===========
showPattern
===========

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L2615


.. role:: raw-latex(raw)
   :format: latex
..

Description
===========

show patterns for 2D spatial data

Usage
=====

.. code:: r

   showPattern(gobject, spatPatObj, ...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spatPatObj``                | Output from detectSpatialPatterns    |
+-------------------------------+--------------------------------------+
| ``...``                       | Arguments passed on to               |
|                               | ``                                   |
|                               | `showPattern2D`` <#showpattern2d>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€dimensionâ€)),        |
|                               | list(â€œdimension to plotâ€)),          |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€trimâ€)), list(â€œTrim  |
|                               | ends of the PC values.â€)),           |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€background_colorâ€)), |
|                               | list(â€œbackground color for plotâ€)),  |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | l                                    |
|                               | ist(list(list(â€grid_border_colorâ€)), |
|                               | list(â€œcolor for gridâ€)),             |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€show_legendâ€)),      |
|                               | list(â€œshow legend of ggplotâ€)),      |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€point_sizeâ€)),       |
|                               | list(â€œsize of pointsâ€)),             |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€show_plotâ€)),        |
+-------------------------------+--------------------------------------+

::

   list("show plot")), "\n", "    ", list(list(list("return_plot")), list("return ggplot object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", "    ", list(list(list("save_param")), list("list of saving parameters, see ", list(list("showSaveParameters")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", "  ")

Value
=====

ggplot

Seealso
=======

```showPattern2D`` <#showpattern2d>`__
