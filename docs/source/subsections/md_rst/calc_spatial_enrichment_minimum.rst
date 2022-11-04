===============================
calc_spatial_enrichment_minimum
===============================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L312

===========

calculate spatial enrichment using a simple and efficient for loop

Usage
=====

.. code:: r

   calc_spatial_enrichment_minimum(
     spatial_network,
     bin_matrix,
     adjust_method = "fdr",
     do_fisher_test = TRUE
   )
