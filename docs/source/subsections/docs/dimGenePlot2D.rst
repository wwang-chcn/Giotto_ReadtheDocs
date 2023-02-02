dimGenePlot2D
-------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L5328
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize gene expression according to dimension reduction coordinates

Usage
~~~~~

::

   dimGenePlot2D(gobject, genes = NULL, default_save_name = "dimGenePlot2D", ...)

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
|                                   | ``dimFeatPlot2D``                 |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``expression_values``             |
|                                   |    gene expression values to use  |
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
|                                   | ``show_NN_network``               |
|                                   |    show underlying NN network     |
|                                   |                                   |
|                                   | ``nn_network_to_use``             |
|                                   |    type of NN network to use (kNN |
|                                   |    vs sNN)                        |
|                                   |                                   |
|                                   | ``network_name``                  |
|                                   |    name of NN network to use, if  |
|                                   |    show_NN_network = TRUE         |
|                                   |                                   |
|                                   | ``network_color``                 |
|                                   |    color of NN network            |
|                                   |                                   |
|                                   | ``edge_alpha``                    |
|                                   |    column to use for alpha of the |
|                                   |    edges                          |
|                                   |                                   |
|                                   | ``scale_alpha_with_expression``   |
|                                   |    scale expression with ggplot   |
|                                   |    alpha parameter                |
|                                   |                                   |
|                                   | ``point_shape``                   |
|                                   |    point with border or not       |
|                                   |    (border or no_border)          |
|                                   |                                   |
|                                   | ``point_size``                    |
|                                   |    size of point (cell)           |
|                                   |                                   |
|                                   | ``point_alpha``                   |
|                                   |    transparancy of points         |
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
|                                   | ``point_border_col``              |
|                                   |    color of border around points  |
|                                   |                                   |
|                                   | ``point_border_stroke``           |
|                                   |    stroke size of border around   |
|                                   |    points                         |
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

Other dimension reduction gene expression visualizations:
``dimGenePlot3D()``, ``dimGenePlot()``
