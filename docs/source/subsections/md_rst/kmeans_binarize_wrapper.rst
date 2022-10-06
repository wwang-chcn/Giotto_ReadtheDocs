=======================
kmeans_binarize_wrapper
=======================

:Date: 2022-10-06

Description
===========

wrapper for different binarization functions

Usage
=====

.. code:: r

   kmeans_binarize_wrapper(
     expr_values,
     subset_feats = NULL,
     kmeans_algo = c("kmeans", "kmeans_arma", "kmeans_arma_subset"),
     nstart = 3,
     iter_max = 10,
     extreme_nr = 50,
     sample_nr = 50,
     set.seed = NULL
   )
