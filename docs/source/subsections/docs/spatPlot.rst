spatPlot
--------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L3531
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize cells according to spatial coordinates

Usage
~~~~~

::

   spatPlot(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``spatPlot2D``                    |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``show_image``                    |
|                                   |    show a tissue background image |
|                                   |                                   |
|                                   | ``gimage``                        |
|                                   |    a giotto image                 |
|                                   |                                   |
|                                   | ``image_name``                    |
|                                   |    name of a giotto image or      |
|                                   |    multiple images with group_by  |
|                                   |                                   |
|                                   | ``largeImage_name``               |
|                                   |    name of a giottoLargeImage or  |
|                                   |    multiple images with group_by  |
|                                   |                                   |
|                                   | ``group_by``                      |
|                                   |    create multiple plots based on |
|                                   |    cell annotation column         |
|                                   |                                   |
|                                   | ``group_by_subset``               |
|                                   |    subset the group_by factor     |
|                                   |    column                         |
|                                   |                                   |
|                                   | ``spat_loc_name``                 |
|                                   |    name of spatial locations      |
|                                   |                                   |
|                                   | ``sdimx``                         |
|                                   |    x-axis dimension name (default |
|                                   |    = 'sdimx')                     |
|                                   |                                   |
|                                   | ``sdimy``                         |
|                                   |    y-axis dimension name (default |
|                                   |    = 'sdimy')                     |
|                                   |                                   |
|                                   | ``spat_enr_names``                |
|                                   |    names of spatial enrichment    |
|                                   |    results to include             |
|                                   |                                   |
|                                   | ``cell_color``                    |
|                                   |    color for cells (see details)  |
|                                   |                                   |
|                                   | ``color_as_factor``               |
|                                   |    convert color column to factor |
|                                   |                                   |
|                                   | ``cell_color_code``               |
|                                   |    named vector with colors       |
|                                   |                                   |
|                                   | ``cell_color_gradient``           |
|                                   |    vector with 3 colors for       |
|                                   |    numeric data                   |
|                                   |                                   |
|                                   | ``gradient_midpoint``             |
|                                   |    midpoint for color gradient    |
|                                   |                                   |
|                                   | ``gradient_limits``               |
|                                   |    vector with lower and upper    |
|                                   |    limits                         |
|                                   |                                   |
|                                   | ``select_cell_groups``            |
|                                   |    select subset of               |
|                                   |    cells/clusters based on        |
|                                   |    cell_color parameter           |
|                                   |                                   |
|                                   | ``select_cells``                  |
|                                   |    select subset of cells based   |
|                                   |    on cell IDs                    |
|                                   |                                   |
|                                   | ``point_shape``                   |
|                                   |    shape of points (border,       |
|                                   |    no_border or voronoi)          |
|                                   |                                   |
|                                   | ``point_size``                    |
|                                   |    size of point (cell)           |
|                                   |                                   |
|                                   | ``point_alpha``                   |
|                                   |    transparancy of point          |
|                                   |                                   |
|                                   | ``point_border_col``              |
|                                   |    color of border around points  |
|                                   |                                   |
|                                   | ``point_border_stroke``           |
|                                   |    stroke size of border around   |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``show_cluster_center``           |
|                                   |    plot center of selected        |
|                                   |    clusters                       |
|                                   |                                   |
|                                   | ``show_center_label``             |
|                                   |    plot label of selected         |
|                                   |    clusters                       |
|                                   |                                   |
|                                   | ``center_point_size``             |
|                                   |    size of center points          |
|                                   |                                   |
|                                   | ``center_point_border_col``       |
|                                   |    border color of center points  |
|                                   |                                   |
|                                   | ``center_point_border_stroke``    |
|                                   |    border stroke size of center   |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``label_size``                    |
|                                   |    size of labels                 |
|                                   |                                   |
|                                   | ``label_fontface``                |
|                                   |    font of labels                 |
|                                   |                                   |
|                                   | ``show_network``                  |
|                                   |    show underlying spatial        |
|                                   |    network                        |
|                                   |                                   |
|                                   | ``spatial_network_name``          |
|                                   |    name of spatial network to use |
|                                   |                                   |
|                                   | ``network_color``                 |
|                                   |    color of spatial network       |
|                                   |                                   |
|                                   | ``network_alpha``                 |
|                                   |    alpha of spatial network       |
|                                   |                                   |
|                                   | ``show_grid``                     |
|                                   |    show spatial grid              |
|                                   |                                   |
|                                   | ``spatial_grid_name``             |
|                                   |    name of spatial grid to use    |
|                                   |                                   |
|                                   | ``grid_color``                    |
|                                   |    color of spatial grid          |
|                                   |                                   |
|                                   | ``show_other_cells``              |
|                                   |    display not selected cells     |
|                                   |                                   |
|                                   | ``other_cell_color``              |
|                                   |    color of not selected cells    |
|                                   |                                   |
|                                   | ``other_point_size``              |
|                                   |    point size of not selected     |
|                                   |    cells                          |
|                                   |                                   |
|                                   | ``other_cells_alpha``             |
|                                   |    alpha of not selected cells    |
|                                   |                                   |
|                                   | ``coord_fix_ratio``               |
|                                   |    fix ratio between x and y-axis |
|                                   |    (default = 1)                  |
|                                   |                                   |
|                                   | ``title``                         |
|                                   |    title of plot                  |
|                                   |                                   |
|                                   | ``show_legend``                   |
|                                   |    show legend                    |
|                                   |                                   |
|                                   | ``legend_text``                   |
|                                   |    size of legend text            |
|                                   |                                   |
|                                   | ``legend_symbol_size``            |
|                                   |    size of legend symbols         |
|                                   |                                   |
|                                   | ``background_color``              |
|                                   |    color of plot background       |
|                                   |                                   |
|                                   | ``vor_border_color``              |
|                                   |    border colorr for voronoi plot |
|                                   |                                   |
|                                   | ``vor_max_radius``                |
|                                   |    maximum radius for voronoi     |
|                                   |    'cells'                        |
|                                   |                                   |
|                                   | ``vor_alpha``                     |
|                                   |    transparancy of voronoi        |
|                                   |    'cells'                        |
|                                   |                                   |
|                                   | ``axis_text``                     |
|                                   |    size of axis text              |
|                                   |                                   |
|                                   | ``axis_title``                    |
|                                   |    size of axis title             |
|                                   |                                   |
|                                   | ``cow_n_col``                     |
|                                   |    cowplot param: how many        |
|                                   |    columns                        |
|                                   |                                   |
|                                   | ``cow_rel_h``                     |
|                                   |    cowplot param: relative height |
|                                   |                                   |
|                                   | ``cow_rel_w``                     |
|                                   |    cowplot param: relative width  |
|                                   |                                   |
|                                   | ``cow_align``                     |
|                                   |    cowplot param: how to align    |
|                                   |                                   |
|                                   | ``show_plot``                     |
|                                   |    show plot                      |
|                                   |                                   |
|                                   | ``return_plot``                   |
|                                   |    return ggplot object           |
|                                   |                                   |
|                                   | ``save_plot``                     |
|                                   |    directly save the plot         |
|                                   |    [boolean]                      |
|                                   |                                   |
|                                   | ``save_param``                    |
|                                   |    list of saving parameters, see |
|                                   |    ``showSaveParameters``         |
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

``spatPlot3D``

Other spatial visualizations: ``spatPlot2D()``, ``spatPlot3D()``
