violinPlot
----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L1723
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Creates violinplot for selected clusters

Usage
~~~~~

::

   violinPlot(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feats = NULL,
     genes = NULL,
     cluster_column,
     cluster_custom_order = NULL,
     color_violin = c("feats", "cluster"),
     cluster_color_code = NULL,
     strip_position = c("top", "right", "left", "bottom"),
     strip_text = 7,
     axis_text_x_size = 10,
     axis_text_y_size = 6,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "violinPlot"
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
| ``feats``                         | features to plot                  |
+-----------------------------------+-----------------------------------+
| ``genes``                         | deprecated, use feats argument    |
+-----------------------------------+-----------------------------------+
| ``cluster_column``                | name of column to use for         |
|                                   | clusters (e.g. "leiden_clus")     |
+-----------------------------------+-----------------------------------+
| ``cluster_custom_order``          | custom order of clusters          |
+-----------------------------------+-----------------------------------+
| ``color_violin``                  | color violin according to "genes" |
|                                   | or "clusters"                     |
+-----------------------------------+-----------------------------------+
| ``cluster_color_code``            | color code for clusters           |
+-----------------------------------+-----------------------------------+
| ``strip_position``                | position of gene labels (e.g.     |
|                                   | "top", "right", "left", "bottom") |
+-----------------------------------+-----------------------------------+
| ``strip_text``                    | size of strip text                |
+-----------------------------------+-----------------------------------+
| ``axis_text_x_size``              | size of x-axis text               |
+-----------------------------------+-----------------------------------+
| ``axis_text_y_size``              | size of y-axis text               |
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
| ``default_save_name``             | default save name for saving,     |
|                                   | don't change, change save_name in |
|                                   | save_param                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

ggplot
