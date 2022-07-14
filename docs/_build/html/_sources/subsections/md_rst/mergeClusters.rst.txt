
``mergeClusters``
=====================

mergeClusters

Description
-----------

Merge selected clusters based on pairwise correlation scores and size of cluster.

Usage
-----

.. code-block:: r

   mergeClusters(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     cluster_column,
     cor = c("pearson", "spearman"),
     new_cluster_name = "merged_cluster",
     min_cor_score = 0.8,
     max_group_size = 20,
     force_min_group_size = 10,
     max_sim_clusters = 10,
     return_gobject = TRUE,
     verbose = TRUE
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
   * - ``cluster_column``
     - name of column to use for clusters
   * - ``cor``
     - correlation score to calculate distance
   * - ``new_cluster_name``
     - new name for merged clusters
   * - ``min_cor_score``
     - min correlation score to merge pairwise clusters
   * - ``max_group_size``
     - max cluster size that can be merged
   * - ``force_min_group_size``
     - size of clusters that will be merged with their most similar neighbor(s)
   * - ``max_sim_clusters``
     - maximum number of clusters to potentially merge to reach force_min_group_size
   * - ``return_gobject``
     - return giotto object
   * - ``verbose``
     - be verbose


Details
-------

Merge selected clusters based on pairwise correlation scores and size of cluster.
 To avoid large clusters to merge the max_group_size can be lowered. Small clusters can
 be forcibly merged with their most similar pairwise cluster by adjusting the
 force_min_group_size parameter. Clusters smaller than this value will be merged
 independent on the provided min_cor_score value. The force_min_group_size might not always
 be reached if clusters have already been merged before list() 
 A giotto object is returned by default, if FALSE then the merging vector will be returned.

Value
-----

Giotto object

Examples
--------

.. code-block:: r

   data("mini_giotto_single_cell")

   pDataDT(mini_giotto_single_cell)
   mini_giotto_single_cell = mergeClusters(mini_giotto_single_cell,
   cluster_column = 'leiden_clus',
   min_cor_score = 0.7,
   force_min_group_size = 4)
   pDataDT(mini_giotto_single_cell)
   plotUMAP_2D(mini_giotto_single_cell, cell_color = 'merged_cluster', point_size = 3)
