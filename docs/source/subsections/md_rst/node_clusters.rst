
``node_clusters``
=====================

node_clusters

Description
-----------

Merge selected clusters based on pairwise correlation scores and size of cluster.

Usage
-----

.. code-block:: r

   node_clusters(hclus_obj, verbose = TRUE)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``hclus_obj``
     - hclus object
   * - ``verbose``
     - be verbose


Value
-----

list of splitted dendrogram nodes from high to low node height
