======================
plotCellProximityGenes
======================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction_visuals.R#L1132

   :format: latex
..

Description
===========

Create visualization for cell proximity feature scores

Usage
=====

.. code:: r

   plotCellProximityGenes(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```plotCellProximity                 |
|                               | Feats`` <#plotcellproximityfeats>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€gobjectâ€)),          |
|                               | list(â€œgiotto objectâ€)),              |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€icfObjectâ€)),        |
|                               | list(â€œICF (interaction changed       |
|                               | feature) score objectâ€)),            |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€methodâ€)),           |
|                               | list(â€œplotting method to useâ€)),     |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€min_cellsâ€)),        |
|                               | list(â€œminimum number of source cell  |
|                               | typeâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,     |
|                               | list(list(list(â€min_cells_exprâ€)),   |
|                               | list(â€œminimum expression level for   |
|                               | source cell typeâ€)),                 |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€min_int_cellsâ€)),    |
|                               | list(â€œminimum number of interacting  |
|                               | neighbor cell typeâ€)),               |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("min_int_cells_expr")), list("minimum expression level for interacting neighbor cell type")), "\n", "    ", list(list(list("min_fdr")), list("minimum adjusted p-value")), "\n", "    ", list(list(list("min_spat_diff")), list("minimum absolute spatial expression difference")), "\n", "    ", list(list(list("min_log2_fc")), list("minimum log2 fold-change")), "\n", "    ", list(list(list("min_zscore")), list("minimum z-score change")), "\n", "    ", list(list(list("zscores_column")), 
       list("calculate z-scores over cell types or featuress")), "\n", "    ", list(list(list("direction")), list("differential expression directions to keep")), "\n", "    ", list(list(list("cell_color_code")), list("vector of colors with cell types as names")), "\n", "    ", list(list(list("show_plot")), list("show plots")), "\n", "    ", list(list(list("return_plot")), list("return plotting object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", 
   "    ", list(list(list("save_param")), list("list of saving parameters from ", list(list("all_plots_save_function")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", "  ")
