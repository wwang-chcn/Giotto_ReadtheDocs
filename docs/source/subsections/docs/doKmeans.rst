doKmeans
--------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/clustering.R#L738
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

cluster cells using kmeans algorithm

Usage
~~~~~

::

   doKmeans(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feats_to_use = NULL,
     genes_to_use = NULL,
     dim_reduction_to_use = c("cells", "pca", "umap", "tsne"),
     dim_reduction_name = "pca",
     dimensions_to_use = 1:10,
     distance_method = c("original", "pearson", "spearman", "euclidean", "maximum",
       "manhattan", "canberra", "binary", "minkowski"),
     centers = 10,
     iter_max = 100,
     nstart = 1000,
     algorithm = "Hartigan-Wong",
     name = "kmeans",
     return_gobject = TRUE,
     set_seed = TRUE,
     seed_number = 1234
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use (e.g.    |
|                                   | "normalized", "scaled", "custom") |
+-----------------------------------+-----------------------------------+
| ``feats_to_use``                  | subset of features to use         |
+-----------------------------------+-----------------------------------+
| ``genes_to_use``                  | deprecated use feats_to_use       |
+-----------------------------------+-----------------------------------+
| ``dim_reduction_to_use``          | dimension reduction to use (e.g.  |
|                                   | "cells", "pca", "umap", "tsne")   |
+-----------------------------------+-----------------------------------+
| ``dim_reduction_name``            | dimensions reduction name,        |
|                                   | default to "pca"                  |
+-----------------------------------+-----------------------------------+
| ``dimensions_to_use``             | dimensions to use, default = 1:10 |
+-----------------------------------+-----------------------------------+
| ``distance_method``               | distance method (e.g. "original", |
|                                   | "pearson", "spearman",            |
|                                   | "euclidean", "maximum",           |
|                                   | "manhattan", "canberra",          |
|                                   | "binary", "minkowski")            |
+-----------------------------------+-----------------------------------+
| ``centers``                       | number of final clusters, default |
|                                   | = 10                              |
+-----------------------------------+-----------------------------------+
| ``iter_max``                      | kmeans maximum iterations,        |
|                                   | default = 100                     |
+-----------------------------------+-----------------------------------+
| ``nstart``                        | kmeans nstart, default = 1000     |
+-----------------------------------+-----------------------------------+
| ``algorithm``                     | kmeans algorithm, default to      |
|                                   | "Hartigan-Wong"                   |
+-----------------------------------+-----------------------------------+
| ``name``                          | name for kmeans clustering,       |
|                                   | default to "kmeans"               |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | boolean: return giotto object     |
|                                   | (default = TRUE)                  |
+-----------------------------------+-----------------------------------+
| ``set_seed``                      | set seed (default = TRUE)         |
+-----------------------------------+-----------------------------------+
| ``seed_number``                   | number for seed                   |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Description on how to use Kmeans clustering method.

Value
~~~~~

giotto object with new clusters appended to cell metadata

See Also
~~~~~~~~

``kmeans``
