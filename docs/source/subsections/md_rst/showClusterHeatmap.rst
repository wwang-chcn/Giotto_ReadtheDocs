==================
showClusterHeatmap
==================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L460


Description
===========

Creates heatmap based on identified clusters

Usage
=====

.. code:: r

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
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``expression_values``         | expression values to use             |
|                               | (e.g.Â â€œnormalizedâ€, â€œscaledâ€,        |
|                               | â€œcustomâ€)                            |
+-------------------------------+--------------------------------------+
| ``feats``                     | vector of features to use, default   |
|                               | to â€˜allâ€™                             |
+-------------------------------+--------------------------------------+
| ``genes``                     | deprecated. Replaced by ``feats``    |
|                               | param                                |
+-------------------------------+--------------------------------------+
| ``cluster_column``            | name of column to use for clusters   |
|                               | (e.g.Â â€œleiden_clusâ€)                 |
+-------------------------------+--------------------------------------+
| ``cor``                       | correlation score to calculate       |
|                               | distance (e.g.Â â€œpearsonâ€,            |
|                               | â€œspearmanâ€)                          |
+-------------------------------+--------------------------------------+
| ``distance``                  | distance method to use for           |
|                               | hierarchical clustering, default to  |
|                               | â€œward.Dâ€                             |
+-------------------------------+--------------------------------------+
| ``show_plot``                 | show plot. TRUE or FALSE             |
+-------------------------------+--------------------------------------+
| ``return_plot``               | return ggplot object. TRUE or FALSE  |
+-------------------------------+--------------------------------------+
| ``save_plot``                 | directly save the plot. TRUE or      |
|                               | FALSE                                |
+-------------------------------+--------------------------------------+
| ``save_param``                | list of saving parameters, see       |
|                               | ```showSaveP                         |
|                               | arameters`` <#showsaveparameters>`__ |
+-------------------------------+--------------------------------------+
| ``default_save_name``         | default save name for saving, donâ€™t  |
|                               | change, change save_name in          |
|                               | save_param                           |
+-------------------------------+--------------------------------------+
| ``...``                       | additional parameters passed to      |
|                               | ```Heatmap`` <#heatmap>`__ function  |
+-------------------------------+--------------------------------------+

Details
=======

Correlation heatmap of selected clusters.

Value
=====

ggplot
