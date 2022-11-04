====================
binSpectSingleMatrix
====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L642


.. role:: raw-latex(raw)
   :format: latex
..

Description
===========

binSpect for a single spatial network and a provided expression matrix

Usage
=====

.. code:: r

   binSpectSingleMatrix(
     expression_matrix,
     spatial_network = NULL,
     bin_matrix = NULL,
     bin_method = c("kmeans", "rank"),
     subset_feats = NULL,
     kmeans_algo = c("kmeans", "kmeans_arma", "kmeans_arma_subset"),
     nstart = 3,
     iter_max = 10,
     extreme_nr = 50,
     sample_nr = 50,
     percentage_rank = 30,
     do_fisher_test = TRUE,
     adjust_method = "fdr",
     calc_hub = FALSE,
     hub_min_int = 3,
     get_av_expr = TRUE,
     get_high_expr = TRUE,
     implementation = c("data.table", "simple", "matrix"),
     group_size = "automatic",
     do_parallel = TRUE,
     cores = NA,
     verbose = TRUE,
     set.seed = NULL
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``expression_matrix``         | expression matrix                    |
+-------------------------------+--------------------------------------+
| ``spatial_network``           | spatial network in data.table format |
+-------------------------------+--------------------------------------+
| ``bin_matrix``                | a binarized matrix, when provided it |
|                               | will skip the binarization process   |
+-------------------------------+--------------------------------------+
| ``bin_method``                | method to binarize gene expression   |
+-------------------------------+--------------------------------------+
| ``subset_feats``              | only select a subset of features to  |
|                               | test                                 |
+-------------------------------+--------------------------------------+
| ``kmeans_algo``               | kmeans algorithm to use (kmeans,     |
|                               | kmeans_arma, kmeans_arma_subset)     |
+-------------------------------+--------------------------------------+
| ``nstart``                    | kmeans: nstart parameter             |
+-------------------------------+--------------------------------------+
| ``iter_max``                  | kmeans: iter.max parameter           |
+-------------------------------+--------------------------------------+
| ``extreme_nr``                | number of top and bottom cells (see  |
|                               | details)                             |
+-------------------------------+--------------------------------------+
| ``sample_nr``                 | total number of cells to sample (see |
|                               | details)                             |
+-------------------------------+--------------------------------------+
| ``percentage_rank``           | percentage of top cells for          |
|                               | binarization                         |
+-------------------------------+--------------------------------------+
| ``do_fisher_test``            | perform fisher test                  |
+-------------------------------+--------------------------------------+
| ``adjust_method``             | p-value adjusted method to use (see  |
|                               | ```p.adjust`` <#p.adjust>`__ )       |
+-------------------------------+--------------------------------------+
| ``calc_hub``                  | calculate the number of hub cells    |
+-------------------------------+--------------------------------------+
| ``hub_min_int``               | minimum number of cell-cell          |
|                               | interactions for a hub cell          |
+-------------------------------+--------------------------------------+
| ``get_av_expr``               | calculate the average expression per |
|                               | gene of the high expressing cells    |
+-------------------------------+--------------------------------------+
| ``get_high_expr``             | calculate the number of high         |
|                               | expressing cells per gene            |
+-------------------------------+--------------------------------------+
| ``implementation``            | enrichment implementation            |
|                               | (data.table, simple, matrix)         |
+-------------------------------+--------------------------------------+
| ``group_size``                | number of genes to process together  |
|                               | with data.table implementation       |
|                               | (default = automatic)                |
+-------------------------------+--------------------------------------+
| ``do_parallel``               | run calculations in parallel with    |
|                               | mclapply                             |
+-------------------------------+--------------------------------------+
| ``cores``                     | number of cores to use if            |
|                               | do_parallel = TRUE                   |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``set.seed``                  | set a seed before kmeans             |
|                               | binarization                         |
+-------------------------------+--------------------------------------+

Details
=======

We provide two ways to identify spatial genes based on gene expression
binarization. Both methods are identicial except for how binarization is
performed.

-  list(â€œ1. binarize:â€) list(â€œEach gene is binarized (0 or 1) in each
   cell withâ€, list(â€œkmeansâ€), â€ (k = 2) or based on â€œ, list(â€rankâ€), â€
   percentileâ€)

-  list(â€œ2. network:â€) list(â€œAlll cells are connected through a spatial
   network based on the physical coordinatesâ€)

-  list(â€œ3. contingency table:â€) list(â€œA contingency table is calculated
   based on all edges of neighboring cells and the binarized expression
   (0-0, 0-1, 1-0 or 1-1)â€)

-  | list(â€œ4. For each gene an odds-ratio (OR) and fisher.test
     (optional) is calculatedâ€)
   | Three different kmeans algorithmes have been implemented:

-  list(â€œ1. kmeans:â€) list(â€œdefault, seeâ€, list(list(â€œkmeansâ€)), â€ â€œ)

-  list(â€œ2. kmeans_arma:â€) list(â€œfrom ClusterR, seeâ€,
   list(list(â€œKMeans_armaâ€)), â€ â€œ)

-  | list(â€œ3. kmeans_arma_subst:â€) list(â€œfrom ClusterR, seeâ€,
     list(list(â€œKMeans_armaâ€)), â€œ,:raw-latex:`\n`â€, â€ but random
     subsetting the vector for each gene to increase speed. Change
     extreme_nr and sample_nr for control. â€œ)
   | Other statistics are provided (optional):

-  Number of cells with high expression (binary = 1)

-  Average expression of each gene within high expressing cells

-  | Number of hub cells, these are high expressing cells that have a
     user defined number of high expressing neighbors
   | By selecting a subset of likely spatial genes (e.g.Â soft
     thresholding highly variable genes) can accelerate the speed. The
     simple implementation is usually faster, but lacks the possibility
     to run in parallel and to calculate hub cells. The data.table
     implementation might be more appropriate for large datasets by
     setting the group_size (number of genes) parameter to divide the
     workload.

Value
=====

data.table with results (see details)
