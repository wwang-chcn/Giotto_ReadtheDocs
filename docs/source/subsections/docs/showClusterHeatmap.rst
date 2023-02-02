showClusterHeatmap
------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L460
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Creates heatmap based on identified clusters

Usage
~~~~~

::

   showClusterHeatmap(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feats = "all",
     genes = NULL,
     cluster_column,
     cor = c("pearson", "spearman"),
     distance = "ward.D",
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "showClusterHeatmap",
     ...
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
| ``feats``                         | vector of features to use,        |
|                                   | default to 'all'                  |
+-----------------------------------+-----------------------------------+
| ``genes``                         | deprecated. Replaced by ``feats`` |
|                                   | param                             |
+-----------------------------------+-----------------------------------+
| ``cluster_column``                | name of column to use for         |
|                                   | clusters (e.g. "leiden_clus")     |
+-----------------------------------+-----------------------------------+
| ``cor``                           | correlation score to calculate    |
|                                   | distance (e.g. "pearson",         |
|                                   | "spearman")                       |
+-----------------------------------+-----------------------------------+
| ``distance``                      | distance method to use for        |
|                                   | hierarchical clustering, default  |
|                                   | to "ward.D"                       |
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
| ``...``                           | additional parameters passed to   |
|                                   | ``Heatmap`` function              |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Correlation heatmap of selected clusters.

Value
~~~~~

ggplot
