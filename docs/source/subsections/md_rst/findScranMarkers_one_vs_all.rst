
``findScranMarkers_one_vs_all``
===================================

findScranMarkers_one_vs_all

Description
-----------

Identify marker genes for all clusters in a one vs all manner based on scran's implementation of findMarkers.

Usage
-----

.. code-block:: r

   findScranMarkers_one_vs_all(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     cluster_column,
     subset_clusters = NULL,
     pval = 0.01,
     logFC = 0.5,
     min_genes = 10,
     verbose = TRUE,
     ...
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
     - subset of clusters to use
   * - ``pval``
     - filter on minimal p-value
   * - ``logFC``
     - filter on logFC
   * - ``min_genes``
     - minimum genes to keep per cluster, overrides pval and logFC
   * - ``verbose``
     - be verbose
   * - ``...``
     - additional parameters for the findMarkers function in scran


Value
-----

data.table with marker genes

Seealso
-------

`\ ``findScranMarkers`` <#findscranmarkers>`_

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   scran_markers = findScranMarkers_one_vs_all(gobject = mini_giotto_single_cell,
   cluster_column = 'leiden_clus')
