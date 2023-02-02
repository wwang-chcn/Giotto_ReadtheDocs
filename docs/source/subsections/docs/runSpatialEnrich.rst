runSpatialEnrich
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1328
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to calculate gene signature enrichment scores per spatial
position using an enrichment test.

Usage
~~~~~

::

   runSpatialEnrich(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     enrich_method = c("PAGE", "rank", "hypergeometric"),
     sign_matrix,
     expression_values = c("normalized", "scaled", "custom"),
     min_overlap_genes = 5,
     reverse_log_scale = TRUE,
     logbase = 2,
     p_value = FALSE,
     n_times = 1000,
     rbp_p = 0.99,
     num_agg = 100,
     max_block = 2e+07,
     top_percentage = 5,
     output_enrichment = c("original", "zscore"),
     name = NULL,
     verbose = TRUE,
     return_gobject = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | Giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``enrich_method``                 | method for gene signature         |
|                                   | enrichment calculation            |
+-----------------------------------+-----------------------------------+
| ``sign_matrix``                   | Matrix of signature genes for     |
|                                   | each cell type / process          |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use          |
+-----------------------------------+-----------------------------------+
| ``min_overlap_genes``             | minimum number of overlapping     |
|                                   | genes in sign_matrix required to  |
|                                   | calculate enrichment (PAGE)       |
+-----------------------------------+-----------------------------------+
| ``reverse_log_scale``             | reverse expression values from    |
|                                   | log scale                         |
+-----------------------------------+-----------------------------------+
| ``logbase``                       | log base to use if                |
|                                   | reverse_log_scale = TRUE          |
+-----------------------------------+-----------------------------------+
| ``p_value``                       | calculate p-value (default =      |
|                                   | FALSE)                            |
+-----------------------------------+-----------------------------------+
| ``n_times``                       | (page/rank) number of permutation |
|                                   | iterations to calculate p-value   |
+-----------------------------------+-----------------------------------+
| ``rbp_p``                         | (rank) fractional binarization    |
|                                   | threshold (default = 0.99)        |
+-----------------------------------+-----------------------------------+
| ``num_agg``                       | (rank) number of top genes to     |
|                                   | aggregate (default = 100)         |
+-----------------------------------+-----------------------------------+
| ``max_block``                     | number of lines to process        |
|                                   | together (default = 20e6)         |
+-----------------------------------+-----------------------------------+
| ``top_percentage``                | (hyper) percentage of cells that  |
|                                   | will be considered to have gene   |
|                                   | expression with matrix            |
|                                   | binarization                      |
+-----------------------------------+-----------------------------------+
| ``output_enrichment``             | how to return enrichment output   |
+-----------------------------------+-----------------------------------+
| ``name``                          | to give to spatial enrichment     |
|                                   | results, default = PAGE           |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | return giotto object              |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

For details see the individual functions:

-  PAGE: ``runPAGEEnrich``

-  Rank: ``runRankEnrich``

-  Hypergeometric: ``runHyperGeometricEnrich``

Value
~~~~~

Giotto object or enrichment results if return_gobject = FALSE
