spatDimGenePlot2D
-----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L5626
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize cells according to spatial AND dimension reduction coordinates
in ggplot mode

Usage
~~~~~

::

   spatDimGenePlot2D(gobject, genes, default_save_name = "spatDimGenePlot2D", ...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``genes``                         | genes to show                     |
+-----------------------------------+-----------------------------------+
| ``default_save_name``             | default save name for saving,     |
|                                   | don't change, change save_name in |
|                                   | save_param                        |
+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``spatDimFeatPlot2D``             |
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
|                                   | ``expression_values``             |
|                                   |    feat expression values to use  |
|                                   |                                   |
|                                   | ``plot_alignment``                |
|                                   |    direction to align plot        |
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
|                                   | ``dim_point_shape``               |
|                                   |    dim reduction points with      |
|                                   |    border or not (border or       |
|                                   |    no_border)                     |
|                                   |                                   |
|                                   | ``dim_point_size``                |
|                                   |    dim reduction plot: point size |
|                                   |                                   |
|                                   | ``dim_point_alpha``               |
|                                   |    transparancy of dim. reduction |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``dim_point_border_col``          |
|                                   |    color of border around points  |
|                                   |                                   |
|                                   | ``dim_point_border_stroke``       |
|                                   |    stroke size of border around   |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``show_NN_network``               |
|                                   |    show underlying NN network     |
|                                   |                                   |
|                                   | ``show_spatial_network``          |
|                                   |    show underlying spatial netwok |
|                                   |                                   |
|                                   | ``nn_network_to_use``             |
|                                   |    type of NN network to use (kNN |
|                                   |    vs sNN)                        |
|                                   |                                   |
|                                   | ``network_name``                  |
|                                   |    name of NN network to use, if  |
|                                   |    show_NN_network = TRUE         |
|                                   |                                   |
|                                   | ``dim_network_color``             |
|                                   |    color of NN network            |
|                                   |                                   |
|                                   | ``dim_edge_alpha``                |
|                                   |    dim reduction plot: column to  |
|                                   |    use for alpha of the edges     |
|                                   |                                   |
|                                   | ``scale_alpha_with_expression``   |
|                                   |    scale expression with ggplot   |
|                                   |    alpha parameter                |
|                                   |                                   |
|                                   | ``sdimx``                         |
|                                   |    spatial x-axis dimension name  |
|                                   |    (default = 'sdimx')            |
|                                   |                                   |
|                                   | ``sdimy``                         |
|                                   |    spatial y-axis dimension name  |
|                                   |    (default = 'sdimy')            |
|                                   |                                   |
|                                   | ``spatial_network_name``          |
|                                   |    name of spatial network to use |
|                                   |                                   |
|                                   | ``spatial_network_color``         |
|                                   |    color of spatial network       |
|                                   |                                   |
|                                   | ``show_spatial_grid``             |
|                                   |    show spatial grid              |
|                                   |                                   |
|                                   | ``grid_color``                    |
|                                   |    color of spatial grid          |
|                                   |                                   |
|                                   | ``spatial_grid_name``             |
|                                   |    name of spatial grid to use    |
|                                   |                                   |
|                                   | ``spat_point_shape``              |
|                                   |    spatial points with border or  |
|                                   |    not (border or no_border)      |
|                                   |                                   |
|                                   | ``spat_point_size``               |
|                                   |    spatial plot: point size       |
|                                   |                                   |
|                                   | ``spat_point_alpha``              |
|                                   |    transparancy of spatial points |
|                                   |                                   |
|                                   | ``spat_point_border_col``         |
|                                   |    color of border around points  |
|                                   |                                   |
|                                   | ``spat_point_border_stroke``      |
|                                   |    stroke size of border around   |
|                                   |    points                         |
|                                   |                                   |
|                                   | ``spat_edge_alpha``               |
|                                   |    edge alpha                     |
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
|                                   | ``show_legend``                   |
|                                   |    show legend                    |
|                                   |                                   |
|                                   | ``legend_text``                   |
|                                   |    size of legend text            |
|                                   |                                   |
|                                   | ``dim_background_color``          |
|                                   |    color of plot background for   |
|                                   |    dimension plot                 |
|                                   |                                   |
|                                   | ``spat_background_color``         |
|                                   |    color of plot background for   |
|                                   |    spatial plot                   |
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
|                                   |    list of saving parameters, see |
|                                   |    ``showSaveParameters``         |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Description of parameters.

Value
~~~~~

ggplot

See Also
~~~~~~~~

``spatDimGenePlot3D``

Other spatial and dimension reduction gene expression visualizations:
``spatDimGenePlot3D()``, ``spatDimGenePlot()``
