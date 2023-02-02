spatGenePlot2D
--------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L4919
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize cells and gene expression according to spatial coordinates

Usage
~~~~~

::

   spatGenePlot2D(gobject, genes, default_save_name = "spatGenePlot2D", ...)

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
|                                   | ``spatFeatPlot2D``                |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``show_image``                    |
|                                   |    show a tissue background image |
|                                   |                                   |
|                                   | ``gimage``                        |
|                                   |    a giotto image                 |
|                                   |                                   |
|                                   | ``image_name``                    |
|                                   |    name of a giotto image or      |
|                                   |    multiple images if group_by    |
|                                   |                                   |
|                                   | ``largeImage_name``               |
|                                   |    name of a giottoLargeImage or  |
|                                   |    multiple images if group by    |
|                                   |                                   |
|                                   | ``spat_loc_name``                 |
|                                   |    name of spatial locations      |
|                                   |                                   |
|                                   | ``group_by``                      |
|                                   |    create multiple plots based on |
|                                   |    cell annotation column         |
|                                   |                                   |
|                                   | ``group_by_subset``               |
|                                   |    subset the group_by factor     |
|                                   |    column                         |
|                                   |                                   |
|                                   | ``sdimx``                         |
|                                   |    x-axis dimension name (default |
|                                   |    = 'sdimx')                     |
|                                   |                                   |
|                                   | ``sdimy``                         |
|                                   |    y-axis dimension name (default |
|                                   |    = 'sdimy')                     |
|                                   |                                   |
|                                   | ``expression_values``             |
|                                   |    gene expression values to use  |
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
|                                   | ``show_network``                  |
|                                   |    show underlying spatial        |
|                                   |    network                        |
|                                   |                                   |
|                                   | ``network_color``                 |
|                                   |    color of spatial network       |
|                                   |                                   |
|                                   | ``spatial_network_name``          |
|                                   |    name of spatial network to use |
|                                   |                                   |
|                                   | ``edge_alpha``                    |
|                                   |    alpha of edge                  |
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
|                                   | ``midpoint``                      |
|                                   |    expression midpoint            |
|                                   |                                   |
|                                   | ``scale_alpha_with_expression``   |
|                                   |    scale expression with ggplot   |
|                                   |    alpha parameter                |
|                                   |                                   |
|                                   | ``point_shape``                   |
|                                   |    shape of points (border,       |
|                                   |    no_border or voronoi)          |
|                                   |                                   |
|                                   | ``point_size``                    |
|                                   |    size of point (cell)           |
|                                   |                                   |
|                                   | ``point_alpha``                   |
|                                   |    transparancy of points         |
|                                   |                                   |
|                                   | ``point_border_col``              |
|                                   |    color of border around points  |
|                                   |                                   |
|                                   | ``point_border_stroke``           |
|                                   |    stroke size of border around   |
|                                   |    points                         |
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

Description of parameters, see ``spatFeatPlot2D``

Value
~~~~~

ggplot

See Also
~~~~~~~~

Other spatial gene expression visualizations: ``spatGenePlot3D()``,
``spatGenePlot()``
