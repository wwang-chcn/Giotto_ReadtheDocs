plotUMAP
--------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L1480
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Short wrapper for UMAP visualization

Usage
~~~~~

::

   plotUMAP(gobject, dim_reduction_name = NULL, default_save_name = "UMAP", ...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``dim_reduction_name``            | name of UMAP                      |
+-----------------------------------+-----------------------------------+
| ``default_save_name``             | default save name of UMAP plot    |
+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``dimPlot2D``                     |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``group_by``                      |
|                                   |    create multiple plots based on |
|                                   |    cell annotation column         |
|                                   |                                   |
|                                   | ``group_by_subset``               |
|                                   |    subset the group_by factor     |
|                                   |    column                         |
|                                   |                                   |
|                                   | ``dim1_to_use``                   |
|                                   |    dimension to use on x-axis     |
|                                   |                                   |
|                                   | ``dim2_to_use``                   |
|                                   |    dimension to use on y-axis     |
|                                   |                                   |
|                                   | ``spat_enr_names``                |
|                                   |    names of spatial enrichment    |
|                                   |    results to include             |
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
|                                   | ``show_other_cells``              |
|                                   |    display not selected cells     |
|                                   |                                   |
|                                   | ``other_cell_color``              |
|                                   |    color of not selected cells    |
|                                   |                                   |
|                                   | ``other_point_size``              |
|                                   |    size of not selected cells     |
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
|                                   | ``edge_alpha``                    |
|                                   |    column to use for alpha of the |
|                                   |    edges                          |
|                                   |                                   |
|                                   | ``point_shape``                   |
|                                   |    point with border or not       |
|                                   |    (border or no_border)          |
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
|                                   | ``title``                         |
|                                   |    title for plot, defaults to    |
|                                   |    cell_color parameter           |
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
|                                   |    cowplot param: relative        |
|                                   |    heights of rows (e.g. c(1,2))  |
|                                   |                                   |
|                                   | ``cow_rel_w``                     |
|                                   |    cowplot param: relative widths |
|                                   |    of columns (e.g. c(1,2))       |
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
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Description of parameters, see ``dimPlot2D``. For 3D plots see
``plotUMAP_3D``

Value
~~~~~

ggplot

See Also
~~~~~~~~

Other reduced dimension visualizations: ``dimPlot2D()``,
``dimPlot3D()``, ``dimPlot()``, ``plotPCA_2D()``, ``plotPCA_3D()``,
``plotPCA()``, ``plotTSNE_2D()``, ``plotTSNE_3D()``, ``plotTSNE()``,
``plotUMAP_2D()``, ``plotUMAP_3D()``
