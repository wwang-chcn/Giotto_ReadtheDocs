==========================
calc_spatial_enrichment_DT
==========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L498

===========

calculate spatial enrichment using the data.table implementation

Usage
=====

.. code:: r

   calc_spatial_enrichment_DT(
     bin_matrix,
     spatial_network,
     calc_hub = F,
     hub_min_int = 3,
     group_size = "automatic",
     do_fisher_test = TRUE,
     adjust_method = "fdr",
     cores = NA
   )
