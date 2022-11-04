=====================
showClusterDendrogram
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L570


Description
===========

Creates dendrogram for selected clusters.

Usage
=====

.. code:: r

   showClusterDendrogram(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     cluster_column,
     cor = c("pearson", "spearman"),
     distance = "ward.D",
     h = NULL,
     h_color = "red",
     rotate = FALSE,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "showClusterDendrogram",
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
| ``h``                         | height of horizontal lines to plot   |
+-------------------------------+--------------------------------------+
| ``h_color``                   | color of horizontal lines            |
+-------------------------------+--------------------------------------+
| ``rotate``                    | rotate dendrogram 90 degrees         |
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
|                               | ```ggdendrogram`` <#ggdendrogram>`__ |
+-------------------------------+--------------------------------------+

Details
=======

Expression correlation dendrogram for selected clusters.

Value
=====

ggplot
