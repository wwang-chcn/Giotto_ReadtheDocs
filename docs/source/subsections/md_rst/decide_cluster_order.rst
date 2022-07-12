
``decide_cluster_order``
============================

decide_cluster_order

Description
-----------

creates order for clusters

Usage
-----

.. code-block:: r

   decide_cluster_order(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     genes,
     cluster_column = NULL,
     cluster_order = c("size", "correlation", "custom"),
     cluster_custom_order = NULL,
     cor_method = "pearson",
     hclust_method = "ward.D"
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``expression_values``
     - expression values to use
   * - ``genes``
     - genes to use
   * - ``cluster_column``
     - name of column to use for clusters
   * - ``cluster_order``
     - method to determine cluster order
   * - ``cluster_custom_order``
     - custom order for clusters
   * - ``cor_method``
     - method for correlation
   * - ``hclust_method``
     - method for hierarchical clustering


Details
-------

Calculates order for clusters.

Value
-----

custom
