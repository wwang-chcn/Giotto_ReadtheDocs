
``kmeans_binarize_wrapper``
===============================

kmeans_binarize_wrapper

Description
-----------

wrapper for different binarization functions

Usage
-----

.. code-block:: r

   kmeans_binarize_wrapper(
     gobject,
     expression_values = c("normalized", "scaled", "custom"),
     subset_genes = NULL,
     kmeans_algo = c("kmeans", "kmeans_arma", "kmeans_arma_subset"),
     nstart = 3,
     iter_max = 10,
     extreme_nr = 50,
     sample_nr = 50,
     set.seed = NULL
   )
