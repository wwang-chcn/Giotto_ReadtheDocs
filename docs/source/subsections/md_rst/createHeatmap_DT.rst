================
createHeatmap_DT
================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L772

===========

creates order for clusters

Usage
=====

.. code:: r

   createHeatmap_DT(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feats,
     genes = NULL,
     cluster_column = NULL,
     cluster_order = c("size", "correlation", "custom"),
     cluster_custom_order = NULL,
     cluster_cor_method = "pearson",
     cluster_hclust_method = "ward.D",
     feat_order = c("correlation", "custom"),
     gene_order = NULL,
     feat_custom_order = NULL,
     gene_custom_order = NULL,
     feat_cor_method = "pearson",
     gene_cor_method = NULL,
     feat_hclust_method = "complete",
     gene_hclust_method = NULL
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
| ``feats``                     | features to use                      |
+-------------------------------+--------------------------------------+
| ``genes``                     | deprecated, use feats                |
+-------------------------------+--------------------------------------+
| ``cluster_column``            | name of column to use for clusters   |
|                               | (e.g.Â â€œleiden_clusâ€)                 |
+-------------------------------+--------------------------------------+
| ``cluster_order``             | method to determine cluster order    |
|                               | (e.g.Â â€œsizeâ€, â€œcorrelationâ€,         |
|                               | â€œcustomâ€)                            |
+-------------------------------+--------------------------------------+
| ``cluster_custom_order``      | custom order for clusters            |
+-------------------------------+--------------------------------------+
| ``cluster_cor_method``        | method for cluster correlation,      |
|                               | default to â€œpearsonâ€                 |
+-------------------------------+--------------------------------------+
| ``cluster_hclust_method``     | method for hierarchical clustering   |
|                               | of clusters, default to â€œward.Dâ€     |
+-------------------------------+--------------------------------------+
| ``feat_order``                | method to determine features order   |
|                               | (e.g.Â â€œcorrelationâ€, â€œcustomâ€)       |
+-------------------------------+--------------------------------------+
| ``gene_order``                | deprecated, use feat_order in the    |
|                               | future                               |
+-------------------------------+--------------------------------------+
| ``feat_custom_order``         | custom order for features            |
+-------------------------------+--------------------------------------+
| ``gene_custom_order``         | deprecated, use feat_custom_order in |
|                               | the future                           |
+-------------------------------+--------------------------------------+
| ``feat_cor_method``           | method for features correlation,     |
|                               | default to â€œpearsonâ€                 |
+-------------------------------+--------------------------------------+
| ``gene_cor_method``           | deprecated, use feat_cor_method in   |
|                               | the future                           |
+-------------------------------+--------------------------------------+
| ``feat_hclust_method``        | method for hierarchical clustering   |
|                               | of features, default to â€œcompleteâ€   |
+-------------------------------+--------------------------------------+
| ``gene_hclust_method``        | deprecated, use feat_hclust_method   |
|                               | in the future                        |
+-------------------------------+--------------------------------------+

Details
=======

Creates input data.tables for plotHeatmap function.

Value
=====

list
