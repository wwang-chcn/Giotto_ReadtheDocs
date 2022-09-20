=====================
cellProximitySpatPlot
=====================

:Date: ymd

.. role:: raw-latex(raw)
   :format: latex
..

``cellProximitySpatPlot``
=========================

cellProximitySpatPlot

Description
-----------

Visualize 2D cell-cell interactions according to spatial coordinates in
ggplot mode

Usage
-----

.. code:: r

   cellProximitySpatPlot(gobject, ...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``...``                       | Arguments passed on to               |
|                               | ```cellProximitySpatPl               |
|                               | ot2D`` <#cellproximityspatplot2d>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”feat_type”)),        |
|                               | list(“feature type”)),               |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”spat_unit”)),        |
|                               | list(“spatial unit”)),               |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”spat_loc_name”)),    |
|                               | list(“spatial locations to use”)),   |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”interaction_name”)), |
|                               | list(“cell-cell interaction name”)), |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”cluster_column”)),   |
|                               | list(“cluster column with cell       |
|                               | clusters”)), “:raw-latex:`\n`”, ” “, |
|                               | list(list(list(”sdimx”)),            |
|                               | list(“x-axis dimension name (default |
|                               | = ‘sdimx’)”)), “:raw-latex:`\n`”,    |
+-------------------------------+--------------------------------------+

::

   "    ", list(list(list("sdimy")), list("y-axis dimension name (default = 'sdimy')")), "\n", "    ", list(list(list("cell_color")), list("color for cells (see details)")), "\n", "    ", list(list(list("cell_color_code")), list("named vector with colors")), "\n", "    ", list(list(list("color_as_factor")), list("convert color column to factor")), "\n", "    ", list(list(list("show_other_cells")), list("decide if show cells not in network")), "\n", "    ", list(list(list("show_network")), list("show spatial network of selected cells")), 
   "\n", "    ", list(list(list("show_other_network")), list("show spatial network of not selected cells")), "\n", "    ", list(list(list("network_color")), list("color of spatial network")), "\n", "    ", list(list(list("spatial_network_name")), list("name of spatial network to use")), "\n", "    ", list(list(list("show_grid")), list("show spatial grid")), "\n", "    ", list(list(list("grid_color")), list("color of spatial grid")), "\n", "    ", list(list(list("spatial_grid_name")), list("name of spatial grid to use")), 
   "\n", "    ", list(list(list("coord_fix_ratio")), list("fix ratio between x and y-axis")), "\n", "    ", list(list(list("show_legend")), list("show legend")), "\n", "    ", list(list(list("point_size_select")), list("size of selected points")), "\n", "    ", list(list(list("point_select_border_col")), list("border color of selected points")), "\n", "    ", list(list(list("point_select_border_stroke")), list("stroke size of selected points")), "\n", "    ", list(list(list("point_size_other")), 
       list("size of other points")), "\n", "    ", list(list(list("point_alpha_other")), list("opacity of other points")), "\n", "    ", list(list(list("point_other_border_col")), list("border color of other points")), "\n", "    ", list(list(list("point_other_border_stroke")), list("stroke size of other points")), "\n", "    ", list(list(list("show_plot")), list("show plots")), "\n", "    ", list(list(list("return_plot")), list("return ggplot object")), "\n", "    ", list(list(list("save_plot")), 
       list("directly save the plot [boolean]")), "\n", "    ", list(list(list("save_param")), list("list of saving parameters from ", list(list("all_plots_save_function")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", "  ")

Details
-------

Description of parameters.

Value
-----

ggplot

Seealso
-------

```cellProximitySpatPlot2D`` <#cellproximityspatplot2d>`__ and
```cellProximitySpatPlot3D`` <#cellproximityspatplot3d>`__ for 3D
