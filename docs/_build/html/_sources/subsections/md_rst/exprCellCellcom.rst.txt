
``exprCellCellcom``
=======================

exprCellCellcom

Description
-----------

Cell-Cell communication scores based on expression only

Usage
-----

.. code-block:: r

   exprCellCellcom(
     gobject,
     cluster_column = "cell_types",
     random_iter = 1000,
     gene_set_1,
     gene_set_2,
     log2FC_addendum = 0.1,
     detailed = FALSE,
     adjust_method = c("fdr", "bonferroni", "BH", "holm", "hochberg", "hommel", "BY",
       "none"),
     adjust_target = c("genes", "cells"),
     set_seed = TRUE,
     seed_number = 1234,
     verbose = T
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object to use
   * - ``cluster_column``
     - cluster column with cell type information
   * - ``random_iter``
     - number of iterations
   * - ``gene_set_1``
     - first specific gene set from gene pairs
   * - ``gene_set_2``
     - second specific gene set from gene pairs
   * - ``log2FC_addendum``
     - addendum to add when calculating log2FC
   * - ``detailed``
     - provide more detailed information (random variance and z-score)
   * - ``adjust_method``
     - which method to adjust p-values
   * - ``adjust_target``
     - adjust multiple hypotheses at the cell or gene level
   * - ``set_seed``
     - set seed for random simulations (default = TRUE)
   * - ``seed_number``
     - seed number
   * - ``verbose``
     - verbose


Details
-------

Statistical framework to identify if pairs of genes (such as ligand-receptor combinations)
 are expressed at higher levels than expected based on a reshuffled null distribution of gene expression values,
 without considering the spatial position of cells.
 More details will follow soon.

Value
-----

Cell-Cell communication scores for gene pairs based on expression only
