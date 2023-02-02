plotHeatmap
-----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L960
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Creates heatmap for genes and clusters.

Usage
~~~~~

::

   plotHeatmap(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feats,
     genes = NULL,
     cluster_column = NULL,
     cluster_order = c("size", "correlation", "custom"),
     cluster_custom_order = NULL,
     cluster_color_code = NULL,
     cluster_cor_method = "pearson",
     cluster_hclust_method = "ward.D",
     feat_order = c("correlation", "custom"),
     gene_order = NULL,
     feat_custom_order = NULL,
     gene_custom_order = NULL,
     feat_cor_method = "pearson",
     gene_cor_method = NULL,
     feat_hclust_method = "complete",
     gene_hclust_method = NULL,
     show_values = c("rescaled", "z-scaled", "original"),
     size_vertical_lines = 1.1,
     gradient_colors = c("blue", "yellow", "red"),
     feat_label_selection = NULL,
     gene_label_selection = NULL,
     axis_text_y_size = NULL,
     legend_nrows = 1,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "plotHeatmap"
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use (e.g.    |
|                                   | "normalized", "scaled", "custom") |
+-----------------------------------+-----------------------------------+
| ``feats``                         | features to use                   |
+-----------------------------------+-----------------------------------+
| ``genes``                         | deprecated, use feats             |
+-----------------------------------+-----------------------------------+
| ``cluster_column``                | name of column to use for         |
|                                   | clusters (e.g. "leiden_clus")     |
+-----------------------------------+-----------------------------------+
| ``cluster_order``                 | method to determine cluster order |
|                                   | (e.g. "size", "correlation",      |
|                                   | "custom")                         |
+-----------------------------------+-----------------------------------+
| ``cluster_custom_order``          | custom order for clusters         |
+-----------------------------------+-----------------------------------+
| ``cluster_color_code``            | color code for clusters           |
+-----------------------------------+-----------------------------------+
| ``cluster_cor_method``            | method for cluster correlation,   |
|                                   | default to "pearson"              |
+-----------------------------------+-----------------------------------+
| ``cluster_hclust_method``         | method for hierarchical           |
|                                   | clustering of clusters, default   |
|                                   | to "ward.D"                       |
+-----------------------------------+-----------------------------------+
| ``feat_order``                    | method to determine features      |
|                                   | order (e.g. "correlation",        |
|                                   | "custom")                         |
+-----------------------------------+-----------------------------------+
| ``gene_order``                    | deprecated, use feat_order        |
+-----------------------------------+-----------------------------------+
| ``feat_custom_order``             | custom order for features         |
+-----------------------------------+-----------------------------------+
| ``gene_custom_order``             | deprecated, use feat_custom_order |
+-----------------------------------+-----------------------------------+
| ``feat_cor_method``               | method for features correlation,  |
|                                   | default to "pearson"              |
+-----------------------------------+-----------------------------------+
| ``gene_cor_method``               | deprecated, use feat_cor_method   |
+-----------------------------------+-----------------------------------+
| ``feat_hclust_method``            | method for hierarchical           |
|                                   | clustering of features, default   |
|                                   | to "complete"                     |
+-----------------------------------+-----------------------------------+
| ``gene_hclust_method``            | deprecated, use                   |
|                                   | feat_hclust_method                |
+-----------------------------------+-----------------------------------+
| ``show_values``                   | which values to show on heatmap   |
|                                   | (e.g. "rescaled", "z-scaled",     |
|                                   | "original")                       |
+-----------------------------------+-----------------------------------+
| ``size_vertical_lines``           | sizes for vertical lines          |
+-----------------------------------+-----------------------------------+
| ``gradient_colors``               | colors for heatmap gradient       |
+-----------------------------------+-----------------------------------+
| ``feat_label_selection``          | subset of features to show on     |
|                                   | y-axis                            |
+-----------------------------------+-----------------------------------+
| ``gene_label_selection``          | deprecated, use                   |
|                                   | feat_label_selection              |
+-----------------------------------+-----------------------------------+
| ``axis_text_y_size``              | size for y-axis text              |
+-----------------------------------+-----------------------------------+
| ``legend_nrows``                  | number of rows for the cluster    |
|                                   | legend                            |
+-----------------------------------+-----------------------------------+
| ``show_plot``                     | show plot. TRUE or FALSE          |
+-----------------------------------+-----------------------------------+
| ``return_plot``                   | return ggplot object. TRUE or     |
|                                   | FALSE                             |
+-----------------------------------+-----------------------------------+
| ``save_plot``                     | directly save the plot. TRUE or   |
|                                   | FALSE                             |
+-----------------------------------+-----------------------------------+
| ``save_param``                    | list of saving parameters, see    |
|                                   | ``showSaveParameters``            |
+-----------------------------------+-----------------------------------+
| ``default_save_name``             | default save name                 |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

If you want to display many genes there are 2 ways to proceed:

-  1. set axis_text_y_size to a really small value and show all features

-  2. provide a subset of features to display to feat_label_selection

Value
~~~~~

ggplot
