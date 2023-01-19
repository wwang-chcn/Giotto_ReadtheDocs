=====================
cellProximitySpatPlot
=====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction_visuals.R#L2869



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
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€feat_typeâ€)),        |
|                               | list(â€œfeature typeâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€spat_unitâ€)),        |
|                               | list(â€œspatial unitâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€spat_loc_nameâ€)),    |
|                               | list(â€œspatial locations to useâ€)),   |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€interaction_nameâ€)), |
|                               | list(â€œcell-cell interaction nameâ€)), |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€cluster_columnâ€)),   |
|                               | list(â€œcluster column with cell       |
|                               | clustersâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ, |
|                               | list(list(list(â€sdimxâ€)),            |
|                               | list(â€œx-axis dimension name (default |
|                               | = â€˜sdimxâ€™)â€)), â€œ:raw-latex:`\n`â€,    |
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
