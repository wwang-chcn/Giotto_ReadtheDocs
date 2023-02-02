combineICF
----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1942
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Combine ICF scores in a pairwise manner.

Usage
~~~~~

::

   combineICF(
     icfObject,
     selected_ints = NULL,
     selected_feats = NULL,
     specific_feats_1 = NULL,
     specific_feats_2 = NULL,
     min_cells = 5,
     min_int_cells = 3,
     min_fdr = 0.05,
     min_spat_diff = 0,
     min_log2_fc = 0.5,
     do_parallel = TRUE,
     verbose = T
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``icfObject``                     | ICF (interaction changed feat)    |
|                                   | score object                      |
+-----------------------------------+-----------------------------------+
| ``selected_ints``                 | subset of selected cell-cell      |
|                                   | interactions (optional)           |
+-----------------------------------+-----------------------------------+
| ``selected_feats``                | subset of selected Feats          |
|                                   | (optional)                        |
+-----------------------------------+-----------------------------------+
| ``specific_feats_1``              | specific Featset combo (need to   |
|                                   | position match specific_genes_2)  |
+-----------------------------------+-----------------------------------+
| ``specific_feats_2``              | specific Featset combo (need to   |
|                                   | position match specific_genes_1)  |
+-----------------------------------+-----------------------------------+
| ``min_cells``                     | minimum number of target cell     |
|                                   | type                              |
+-----------------------------------+-----------------------------------+
| ``min_int_cells``                 | minimum number of interacting     |
|                                   | cell type                         |
+-----------------------------------+-----------------------------------+
| ``min_fdr``                       | minimum adjusted p-value          |
+-----------------------------------+-----------------------------------+
| ``min_spat_diff``                 | minimum absolute spatial          |
|                                   | expression difference             |
+-----------------------------------+-----------------------------------+
| ``min_log2_fc``                   | minimum absolute log2 fold-change |
+-----------------------------------+-----------------------------------+
| ``do_parallel``                   | run calculations in parallel with |
|                                   | mclapply                          |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | verbose                           |
+-----------------------------------+-----------------------------------+

Value
~~~~~

icfObject that contains the filtered differential feats scores
