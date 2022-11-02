======================
plotCellProximityFeats
======================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction_visuals.R#L1166


Description
===========

Create visualization for cell proximity feature scores

Usage
=====

.. code:: r

   plotCellProximityFeats(
     gobject,
     icfObject,
     method = c("volcano", "cell_barplot", "cell-cell", "cell_sankey", "heatmap", "dotplot"),
     min_cells = 4,
     min_cells_expr = 1,
     min_int_cells = 4,
     min_int_cells_expr = 1,
     min_fdr = 0.1,
     min_spat_diff = 0.2,
     min_log2_fc = 0.2,
     min_zscore = 2,
     zscores_column = c("cell_type", "feats"),
     direction = c("both", "up", "down"),
     cell_color_code = NULL,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "plotCellProximityFeats"
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``icfObject``                 | ICF (interaction changed feature)    |
|                               | score object                         |
+-------------------------------+--------------------------------------+
| ``method``                    | plotting method to use               |
+-------------------------------+--------------------------------------+
| ``min_cells``                 | minimum number of source cell type   |
+-------------------------------+--------------------------------------+
| ``min_cells_expr``            | minimum expression level for source  |
|                               | cell type                            |
+-------------------------------+--------------------------------------+
| ``min_int_cells``             | minimum number of interacting        |
|                               | neighbor cell type                   |
+-------------------------------+--------------------------------------+
| ``min_int_cells_expr``        | minimum expression level for         |
|                               | interacting neighbor cell type       |
+-------------------------------+--------------------------------------+
| ``min_fdr``                   | minimum adjusted p-value             |
+-------------------------------+--------------------------------------+
| ``min_spat_diff``             | minimum absolute spatial expression  |
|                               | difference                           |
+-------------------------------+--------------------------------------+
| ``min_log2_fc``               | minimum log2 fold-change             |
+-------------------------------+--------------------------------------+
| ``min_zscore``                | minimum z-score change               |
+-------------------------------+--------------------------------------+
| ``zscores_column``            | calculate z-scores over cell types   |
|                               | or featuress                         |
+-------------------------------+--------------------------------------+
| ``direction``                 | differential expression directions   |
|                               | to keep                              |
+-------------------------------+--------------------------------------+
| ``cell_color_code``           | vector of colors with cell types as  |
|                               | names                                |
+-------------------------------+--------------------------------------+
| ``show_plot``                 | show plots                           |
+-------------------------------+--------------------------------------+
| ``return_plot``               | return plotting object               |
+-------------------------------+--------------------------------------+
| ``save_plot``                 | directly save the plot [boolean]     |
+-------------------------------+--------------------------------------+
| ``save_param``                | list of saving parameters from       |
|                               | ```all_plots_save_f                  |
|                               | unction`` <#allplotssavefunction>`__ |
+-------------------------------+--------------------------------------+
| ``default_save_name``         | default save name for saving, don’t  |
|                               | change, change save_name in          |
|                               | save_param                           |
+-------------------------------+--------------------------------------+

Value
=====

plot
