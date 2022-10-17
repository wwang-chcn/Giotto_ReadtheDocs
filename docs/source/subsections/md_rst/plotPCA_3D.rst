==========
plotPCA_3D
==========

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L7220

.. role:: raw-latex(raw)
   :format: latex
..

Description
===========

Visualize cells according to 3D PCA dimension reduction

Usage
=====

.. code:: r

   plotPCA_3D(
     gobject,
     dim_reduction_name = "pca",
     default_save_name = "PCA_3D",
     ...
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``dim_reduction_name``        | name of PCA                          |
+-------------------------------+--------------------------------------+
| ``default_save_name``         | default save name of PCA plot        |
+-------------------------------+--------------------------------------+
| ``...``                       | Arguments passed on to               |
|                               | ```dimPlot3D`` <#dimplot3d>`__       |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€spat_unitâ€)),        |
|                               | list(â€œspatial unitâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€feat_typeâ€)),        |
|                               | list(â€œfeature typeâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€dim1_to_useâ€)),      |
|                               | list(â€œdimension to use on x-axisâ€)), |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€dim2_to_useâ€)),      |
|                               | list(â€œdimension to use on y-axisâ€)), |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€dim3_to_useâ€)),      |
|                               | list(â€œdimension to use on z-axisâ€)), |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€spat_enr_namesâ€)),   |
|                               | list(â€œnames of spatial enrichment    |
|                               | results to includeâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
+-------------------------------+--------------------------------------+

::

   list(list(list("show_NN_network")), list("show underlying NN network")), "\n", "    ", list(list(list("nn_network_to_use")), list("type of NN network to use (kNN vs sNN)")), "\n", "    ", list(list(list("network_name")), list("name of NN network to use, if show_NN_network = TRUE")), "\n", "    ", list(list(list("cell_color")), list("color for cells (see details)")), "\n", "    ", list(list(list("color_as_factor")), list("convert color column to factor")), "\n", "    ", list(list(list("cell_color_code")), 
       list("named vector with colors")), "\n", "    ", list(list(list("select_cell_groups")), list("select subset of cells/clusters based on cell_color parameter")), "\n", "    ", list(list(list("select_cells")), list("select subset of cells based on cell IDs")), "\n", "    ", list(list(list("show_other_cells")), list("display not selected cells")), "\n", "    ", list(list(list("other_cell_color")), list("color of not selected cells")), "\n", "    ", list(list(list("other_point_size")), list("size of not selected cells")), 
   "\n", "    ", list(list(list("show_cluster_center")), list("plot center of selected clusters")), "\n", "    ", list(list(list("show_center_label")), list("plot label of selected clusters")), "\n", "    ", list(list(list("center_point_size")), list("size of center points")), "\n", "    ", list(list(list("label_size")), list("size of labels")), "\n", "    ", list(list(list("edge_alpha")), list("column to use for alpha of the edges")), "\n", "    ", list(list(list("point_size")), list("size of point (cell)")), 
   "\n", "    ", list(list(list("show_plot")), list("show plot")), "\n", "    ", list(list(list("return_plot")), list("return ggplot object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", "    ", list(list(list("save_param")), list("list of saving parameters, see ", list(list("showSaveParameters")))), "\n", "  ")

Details
=======

Description of parameters.

Value
=====

plotly

Seealso
=======

Other reduced dimension visualizations: ```dimPlot2D`` <#dimplot2d>`__ ,
```dimPlot3D`` <#dimplot3d>`__ , ```dimPlot`` <#dimplot>`__ ,
```plotPCA_2D`` <#plotpca2d>`__ , ```plotPCA`` <#plotpca>`__ ,
```plotTSNE_2D`` <#plottsne2d>`__ , ```plotTSNE_3D`` <#plottsne3d>`__ ,
```plotTSNE`` <#plottsne>`__ , ```plotUMAP_2D`` <#plotumap2d>`__ ,
```plotUMAP_3D`` <#plotumap3d>`__ , ```plotUMAP`` <#plotumap>`__
