=======
plotCPG
=======

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction_visuals.R#L1415


``plotCPG``
===========

plotCPG

Description
-----------

Create visualization for cell proximity feature scores

Usage
-----

.. code:: r

   plotCPG(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```plotCellProximity                 |
|                               | Feats`` <#plotcellproximityfeats>`__ |
|                               | list(“:raw-latex:`\n`�, � “,         |
|                               | list(list(list(�gobject�)),          |
|                               | list(“giotto object�)),              |
|                               | “:raw-latex:`\n`�, � “,              |
|                               | list(list(list(�icfObject�)),        |
|                               | list(“ICF (interaction changed       |
|                               | feature) score object�)),            |
|                               | “:raw-latex:`\n`�, � “,              |
|                               | list(list(list(�method�)),           |
|                               | list(“plotting method to use�)),     |
|                               | “:raw-latex:`\n`�, � “,              |
|                               | list(list(list(�min_cells�)),        |
|                               | list(“minimum number of source cell  |
|                               | type�)), “:raw-latex:`\n`�, � “,     |
|                               | list(list(list(�min_cells_expr�)),   |
|                               | list(“minimum expression level for   |
|                               | source cell type�)),                 |
|                               | “:raw-latex:`\n`�, � “,              |
|                               | list(list(list(�min_int_cells�)),    |
|                               | list(“minimum number of interacting  |
|                               | neighbor cell type�)),               |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("min_int_cells_expr")), list("minimum expression level for interacting neighbor cell type")), "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum log2 fold-change")), "\n", "    ", list(list(list("min_zscore")), list("minimum z-score change")), "\n", "    ", list(list(list("zscores_column")), 
       list("calculate z-scores over cell types or featuress")), "\n", "    ", list(list(list("direction")), list("differential expression directions to keep")), "\n", "    ", list(list(list("cell_color_code")), list("vector of colors with cell types as names")), "\n", "    ", list(list(list("show_plot")), list("show plots")), "\n", "    ", list(list(list("return_plot")), list("return plotting object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", 
   "    ", list(list(list("save_param")), list("list of saving parameters from ", list(list("all_plots_save_function")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", "  ")
