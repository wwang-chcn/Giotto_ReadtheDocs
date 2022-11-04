=====================
create_cluster_matrix
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3254

===========

creates aggregated matrix for a given clustering column

Usage
=====

.. code:: r

   create_cluster_matrix(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     cluster_column,
     feat_subset = NULL,
     gene_subset = NULL
   )
