cellProximitySpatPlot
---------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction_visuals.R#L2869
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize 2D cell-cell interactions according to spatial coordinates in
ggplot mode

Usage
~~~~~

::

   cellProximitySpatPlot(gobject, ...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``cellProximitySpatPlot2D``       |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``spat_loc_name``                 |
|                                   |    spatial locations to use       |
|                                   |                                   |
|                                   | ``interaction_name``              |
|                                   |    cell-cell interaction name     |
|                                   |                                   |
|                                   | ``cluster_column``                |
|                                   |    cluster column with cell       |
|                                   |    clusters                       |
|                                   |                                   |
|                                   | ``sdimx``                         |
|                                   |    x-axis dimension name (default |
|                                   |    = 'sdimx')                     |
|                                   |                                   |
|                                   | ``sdimy``                         |
|                                   |    y-axis dimension name (default |
|                                   |    = 'sdimy')                     |
|                                   |                                   |
|                                   | ``cell_color``                    |
|                                   |    color for cells (see details)  |
|                                   |                                   |
|                                   | ``cell_color_code``               |
|                                   |    named vector with colors       |
|                                   |                                   |
|                                   | ``color_as_factor``               |
|                                   |    convert color column to factor |
|                                   |                                   |
|                                   | ``show_other_cells``              |
|                                   |    decide if show cells not in    |
|                                   |    network                        |
|                                   |                                   |
|                                   | ``show_network``                  |
|                                   |    show spatial network of        |
|                                   |    selected cells                 |
|                                   |                                   |
|                                   | ``show_other_network``            |
|                                   |    show spatial network of not    |
|                                   |    selected cells                 |
|                                   |                                   |
|                                   | ``network_color``                 |
|                                   |    color of spatial network       |
|                                   |                                   |
|                                   | ``spatial_network_name``          |
|                                   |    name of spatial network to use |
|                                   |                                   |
|                                   | ``show_grid``                     |
|                                   |    show spatial grid              |
|                                   |                                   |
|                                   | ``grid_color``                    |
|                                   |    color of spatial grid          |
|                                   |                                   |
|                                   | ``spatial_grid_name``             |
|                                   |    name of spatial grid to use    |
|                                   |                                   |
|                                   | ``coord_fix_ratio``               |
|                                   |    fix ratio between x and y-axis |
|                                   |                                   |
|                                   | ``show_legend``                   |
|                                   |    show legend                    |
|                                   |                                   |
|                                   | ``point_size_select``             |
|                                   |    size of selected points        |
|                                   |                                   |
|                                   | ``point_select_border_col``       |
|                                   |    border color of selected       |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``point_select_border_stroke``    |
|                                   |    stroke size of selected points |
|                                   |                                   |
|                                   | ``point_size_other``              |
|                                   |    size of other points           |
|                                   |                                   |
|                                   | ``point_alpha_other``             |
|                                   |    opacity of other points        |
|                                   |                                   |
|                                   | ``point_other_border_col``        |
|                                   |    border color of other points   |
|                                   |                                   |
|                                   | ``point_other_border_stroke``     |
|                                   |    stroke size of other points    |
|                                   |                                   |
|                                   | ``show_plot``                     |
|                                   |    show plots                     |
|                                   |                                   |
|                                   | ``return_plot``                   |
|                                   |    return ggplot object           |
|                                   |                                   |
|                                   | ``save_plot``                     |
|                                   |    directly save the plot         |
|                                   |    [boolean]                      |
|                                   |                                   |
|                                   | ``save_param``                    |
|                                   |    list of saving parameters from |
|                                   |    ``all_plots_save_function``    |
|                                   |                                   |
|                                   | ``default_save_name``             |
|                                   |    default save name for saving,  |
|                                   |    don't change, change save_name |
|                                   |    in save_param                  |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Description of parameters.

Value
~~~~~

ggplot

See Also
~~~~~~~~

``cellProximitySpatPlot2D`` and ``cellProximitySpatPlot3D`` for 3D
