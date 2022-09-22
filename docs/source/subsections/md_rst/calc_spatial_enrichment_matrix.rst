==============================
calc_spatial_enrichment_matrix
==============================

:Date: 2022-09-22

Description
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
