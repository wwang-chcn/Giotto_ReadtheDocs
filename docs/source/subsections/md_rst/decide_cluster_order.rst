====================
decide_cluster_order
====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_visuals.R#L664

===========

creates order for clusters

Usage
=====

.. code:: r

   decide_cluster_order(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feats,
     genes = NULL,
     cluster_column = NULL,
     cluster_order = c("size", "correlation", "custom"),
     cluster_custom_order = NULL,
     cor_method = "pearson",
     hclust_method = "ward.D"
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
| ``feats``                     | features to use (e.g.Â genes)         |
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
| ``cor_method``                | method for correlation, default to   |
|                               | â€˜pearsonâ€™                            |
+-------------------------------+--------------------------------------+
| ``hclust_method``             | method for hierarchical clustering,  |
|                               | default to â€˜ward.Dâ€™                  |
+-------------------------------+--------------------------------------+

Details
=======

Calculates order for clusters.

Value
=====

custom
