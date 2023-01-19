====================
decide_cluster_order
====================

:Date: 1/19/23

``decide_cluster_order``
========================

decide_cluster_order

Description
-----------

creates order for clusters

Usage
-----

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
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell”)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g. “rna”, “dna”,     |
|                               | “protein”)                           |
+-------------------------------+--------------------------------------+
| ``expression_values``         | expression values to use             |
|                               | (e.g. “normalized”, “scaled”,        |
|                               | “custom”)                            |
+-------------------------------+--------------------------------------+
| ``feats``                     | features to use (e.g. genes)         |
+-------------------------------+--------------------------------------+
| ``genes``                     | deprecated, use feats                |
+-------------------------------+--------------------------------------+
| ``cluster_column``            | name of column to use for clusters   |
|                               | (e.g. “leiden_clus”)                 |
+-------------------------------+--------------------------------------+
| ``cluster_order``             | method to determine cluster order    |
|                               | (e.g. “size”, “correlation”,         |
|                               | “custom”)                            |
+-------------------------------+--------------------------------------+
| ``cluster_custom_order``      | custom order for clusters            |
+-------------------------------+--------------------------------------+
| ``cor_method``                | method for correlation, default to   |
|                               | ‘pearson’                            |
+-------------------------------+--------------------------------------+
| ``hclust_method``             | method for hierarchical clustering,  |
|                               | default to ‘ward.D’                  |
+-------------------------------+--------------------------------------+

Details
-------

Calculates order for clusters.

Value
-----

custom
