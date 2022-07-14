
``findGiniMarkers``
=======================

findGiniMarkers

Description
-----------

Identify marker genes for selected clusters based on gini detection and expression scores.

Usage
-----

.. code-block:: r

   findGiniMarkers(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     cluster_column,
     subset_clusters = NULL,
     group_1 = NULL,
     group_2 = NULL,
     min_expr_gini_score = 0.2,
     min_det_gini_score = 0.2,
     detection_threshold = 0,
     rank_score = 1,
     min_genes = 5
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
     - gene expression values to use
   * - ``cluster_column``
     - clusters to use
   * - ``subset_clusters``
     - selection of clusters to compare
   * - ``group_1``
     - group 1 cluster IDs from cluster_column for pairwise comparison
   * - ``group_2``
     - group 2 cluster IDs from cluster_column for pairwise comparison
   * - ``min_expr_gini_score``
     - filter on minimum gini coefficient for expression
   * - ``min_det_gini_score``
     - filter on minimum gini coefficient for detection
   * - ``detection_threshold``
     - detection threshold for gene expression
   * - ``rank_score``
     - rank scores for both detection and expression to include
   * - ``min_genes``
     - minimum number of top genes to return


Details
-------

Detection of marker genes using the `https://en.wikipedia.org/wiki/Gini_coefficient <https://en.wikipedia.org/wiki/Gini_coefficient>`_ gini 
 coefficient is based on the following steps/principles per gene:


* 

  #. calculate average expression per cluster   

* 

  #. calculate detection fraction per cluster   

* 

  #. calculate gini-coefficient for av. expression values over all clusters   

* 

  #. calculate gini-coefficient for detection fractions over all clusters   

* 

  #. convert gini-scores to rank scores   

* 

  #. for each gene create combined score = detection rank x expression rank x expr gini-coefficient x detection gini-coefficient   

* 

  #. for each gene sort on expression and detection rank and combined score  

  As a results "top gini" genes are genes that are very selectivily expressed in a specific cluster,
  however not always expressed in all cells of that cluster. In other words highly specific, but
  not necessarily sensitive at the single-cell level.

  To perform differential expression between cluster groups you need to specificy cluster IDs
  to the parameters group_1 and group_2 .

Value
-----

data.table with marker genes

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   gini_markers = findGiniMarkers(gobject = mini_giotto_single_cell,
   cluster_column = 'leiden_clus',
   group_1 = 1,
   group_2 = 2)
