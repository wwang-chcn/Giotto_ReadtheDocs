==============================
calc_spatial_enrichment_matrix
==============================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L407

===========

calculate spatial enrichment using a matrix approach

Usage
=====

.. code:: r

   calc_spatial_enrichment_matrix(
     spatial_network,
     bin_matrix,
     adjust_method = "fdr",
     do_fisher_test = TRUE,
     do_parallel = TRUE,
     cores = NA,
     calc_hub = FALSE,
     hub_min_int = 3,
     verbose = TRUE
   )
