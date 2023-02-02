spatDimCellPlot
---------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L6493
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize numerical features of cells according to spatial AND dimension
reduction coordinates in 2D

Usage
~~~~~

::

   spatDimCellPlot(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``spatDimCellPlot2D``             |
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
|                                   |    name of a giotto image         |
|                                   |                                   |
|                                   | ``largeImage_name``               |
|                                   |    name of a giottoLargeImage     |
|                                   |                                   |
|                                   | ``plot_alignment``                |
|                                   |    direction to align plot        |
|                                   |                                   |
|                                   | ``spat_enr_names``                |
|                                   |    names of spatial enrichment    |
|                                   |    results to include             |
|                                   |                                   |
|                                   | ``cell_annotation_values``        |
|                                   |    numeric cell annotation        |
|                                   |    columns                        |
|                                   |                                   |
|                                   | ``dim_reduction_to_use``          |
|                                   |    dimension reduction to use     |
|                                   |                                   |
|                                   | ``dim_reduction_name``            |
|                                   |    dimension reduction name       |
|                                   |                                   |
|                                   | ``dim1_to_use``                   |
|                                   |    dimension to use on x-axis     |
|                                   |                                   |
|                                   | ``dim2_to_use``                   |
|                                   |    dimension to use on y-axis     |
|                                   |                                   |
|                                   | ``sdimx``                         |
|                                   |    = spatial dimension to use on  |
|                                   |    x-axis                         |
|                                   |                                   |
|                                   | ``sdimy``                         |
|                                   |    = spatial dimension to use on  |
|                                   |    y-axis                         |
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
|                                   | ``dim_point_shape``               |
|                                   |    dim reduction points with      |
|                                   |    border or not (border or       |
|                                   |    no_border)                     |
|                                   |                                   |
|                                   | ``dim_point_size``                |
|                                   |    size of points in dim.         |
|                                   |    reduction space                |
|                                   |                                   |
|                                   | ``dim_point_alpha``               |
|                                   |    transparancy of dim. reduction |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``dim_point_border_col``          |
|                                   |    border color of points in dim. |
|                                   |    reduction space                |
|                                   |                                   |
|                                   | ``dim_point_border_stroke``       |
|                                   |    border stroke of points in     |
|                                   |    dim. reduction space           |
|                                   |                                   |
|                                   | ``spat_point_shape``              |
|                                   |    shape of points (border,       |
|                                   |    no_border or voronoi)          |
|                                   |                                   |
|                                   | ``spat_point_size``               |
|                                   |    size of spatial points         |
|                                   |                                   |
|                                   | ``spat_point_alpha``              |
|                                   |    transparancy of spatial points |
|                                   |                                   |
|                                   | ``spat_point_border_col``         |
|                                   |    border color of spatial points |
|                                   |                                   |
|                                   | ``spat_point_border_stroke``      |
|                                   |    border stroke of spatial       |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``dim_show_cluster_center``       |
|                                   |    show the center of each        |
|                                   |    cluster                        |
|                                   |                                   |
|                                   | ``dim_show_center_label``         |
|                                   |    provide a label for each       |
|                                   |    cluster                        |
|                                   |                                   |
|                                   | ``dim_center_point_size``         |
|                                   |    size of the center point       |
|                                   |                                   |
|                                   | ``dim_center_point_border_col``   |
|                                   |    border color of center point   |
|                                   |                                   |
|                                   | ``dim_center_point_border_stroke` |
|                                   | `                                 |
|                                   |    stroke size of center point    |
|                                   |                                   |
|                                   | ``dim_label_size``                |
|                                   |    size of the center label       |
|                                   |                                   |
|                                   | ``dim_label_fontface``            |
|                                   |    font of the center label       |
|                                   |                                   |
|                                   | ``spat_show_cluster_center``      |
|                                   |    show the center of each        |
|                                   |    cluster                        |
|                                   |                                   |
|                                   | ``spat_show_center_label``        |
|                                   |    provide a label for each       |
|                                   |    cluster                        |
|                                   |                                   |
|                                   | ``spat_center_point_size``        |
|                                   |    size of the spatial center     |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``spat_center_point_border_col``  |
|                                   |    border color of the spatial    |
|                                   |    center points                  |
|                                   |                                   |
|                                   | ``spat_center_point_border_stroke |
|                                   | ``                                |
|                                   |    stroke size of the spatial     |
|                                   |    center points                  |
|                                   |                                   |
|                                   | ``spat_label_size``               |
|                                   |    size of the center label       |
|                                   |                                   |
|                                   | ``spat_label_fontface``           |
|                                   |    font of the center label       |
|                                   |                                   |
|                                   | ``show_NN_network``               |
|                                   |    show underlying NN network     |
|                                   |                                   |
|                                   | ``nn_network_to_use``             |
|                                   |    type of NN network to use (kNN |
|                                   |    vs sNN)                        |
|                                   |                                   |
|                                   | ``nn_network_name``               |
|                                   |    name of NN network to use, if  |
|                                   |    show_NN_network = TRUE         |
|                                   |                                   |
|                                   | ``dim_edge_alpha``                |
|                                   |    column to use for alpha of the |
|                                   |    edges                          |
|                                   |                                   |
|                                   | ``spat_show_network``             |
|                                   |    show spatial network           |
|                                   |                                   |
|                                   | ``spatial_network_name``          |
|                                   |    name of spatial network to use |
|                                   |                                   |
|                                   | ``spat_network_color``            |
|                                   |    color of spatial network       |
|                                   |                                   |
|                                   | ``spat_network_alpha``            |
|                                   |    alpha of spatial network       |
|                                   |                                   |
|                                   | ``spat_show_grid``                |
|                                   |    show spatial grid              |
|                                   |                                   |
|                                   | ``spatial_grid_name``             |
|                                   |    name of spatial grid to use    |
|                                   |                                   |
|                                   | ``spat_grid_color``               |
|                                   |    color of spatial grid          |
|                                   |                                   |
|                                   | ``show_other_cells``              |
|                                   |    display not selected cells     |
|                                   |                                   |
|                                   | ``other_cell_color``              |
|                                   |    color of not selected cells    |
|                                   |                                   |
|                                   | ``dim_other_point_size``          |
|                                   |    size of not selected dim cells |
|                                   |                                   |
|                                   | ``spat_other_point_size``         |
|                                   |    size of not selected spat      |
|                                   |    cells                          |
|                                   |                                   |
|                                   | ``spat_other_cells_alpha``        |
|                                   |    alpha of not selected spat     |
|                                   |    cells                          |
|                                   |                                   |
|                                   | ``coord_fix_ratio``               |
|                                   |    ratio for coordinates          |
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
|                                   | ``show_legend``                   |
|                                   |    show legend                    |
|                                   |                                   |
|                                   | ``legend_text``                   |
|                                   |    size of legend text            |
|                                   |                                   |
|                                   | ``legend_symbol_size``            |
|                                   |    size of legend symbols         |
|                                   |                                   |
|                                   | ``dim_background_color``          |
|                                   |    background color of points in  |
|                                   |    dim. reduction space           |
|                                   |                                   |
|                                   | ``spat_background_color``         |
|                                   |    background color of spatial    |
|                                   |    points                         |
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

Other spatial and dimension reduction cell annotation visualizations:
``spatDimCellPlot2D()``
