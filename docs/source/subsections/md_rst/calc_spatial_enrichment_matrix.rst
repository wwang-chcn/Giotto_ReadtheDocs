==============================
calc_spatial_enrichment_matrix
==============================

:Date: 1/19/23

``calc_spatial_enrichment_matrix``
==================================

calc_spatial_enrichment_matrix

Description
-----------

calculate spatial enrichment using a matrix approach

Usage
-----

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
