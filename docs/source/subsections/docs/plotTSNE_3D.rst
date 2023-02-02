plotTSNE_3D
-----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L7250
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Visualize cells according to dimension reduction coordinates

Usage
~~~~~

::

   plotTSNE_3D(
     gobject,
     dim_reduction_name = "tsne",
     default_save_name = "TSNE_3D",
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``dim_reduction_name``            | name of TSNE                      |
+-----------------------------------+-----------------------------------+
| ``default_save_name``             | default save name of TSNE plot    |
+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``dimPlot3D``                     |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit                   |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type                   |
|                                   |                                   |
|                                   | ``dim1_to_use``                   |
|                                   |    dimension to use on x-axis     |
|                                   |                                   |
|                                   | ``dim2_to_use``                   |
|                                   |    dimension to use on y-axis     |
|                                   |                                   |
|                                   | ``dim3_to_use``                   |
|                                   |    dimension to use on z-axis     |
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
|                                   | ``label_size``                    |
|                                   |    size of labels                 |
|                                   |                                   |
|                                   | ``edge_alpha``                    |
|                                   |    column to use for alpha of the |
|                                   |    edges                          |
|                                   |                                   |
|                                   | ``point_size``                    |
|                                   |    size of point (cell)           |
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

Description of parameters.

Value
~~~~~

plotly

See Also
~~~~~~~~

Other reduced dimension visualizations: ``dimPlot2D()``,
``dimPlot3D()``, ``dimPlot()``, ``plotPCA_2D()``, ``plotPCA_3D()``,
``plotPCA()``, ``plotTSNE_2D()``, ``plotTSNE()``, ``plotUMAP_2D()``,
``plotUMAP_3D()``, ``plotUMAP()``
