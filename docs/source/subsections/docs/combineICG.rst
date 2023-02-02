combineICG
----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1978
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

   combineICG(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``combineICF``                    |
|                                   |                                   |
|                                   | ``icfObject``                     |
|                                   |    ICF (interaction changed feat) |
|                                   |    score object                   |
|                                   |                                   |
|                                   | ``selected_ints``                 |
|                                   |    subset of selected cell-cell   |
|                                   |    interactions (optional)        |
|                                   |                                   |
|                                   | ``selected_feats``                |
|                                   |    subset of selected Feats       |
|                                   |    (optional)                     |
|                                   |                                   |
|                                   | ``specific_feats_1``              |
|                                   |    specific Featset combo (need   |
|                                   |    to position match              |
|                                   |    specific_genes_2)              |
|                                   |                                   |
|                                   | ``specific_feats_2``              |
|                                   |    specific Featset combo (need   |
|                                   |    to position match              |
|                                   |    specific_genes_1)              |
|                                   |                                   |
|                                   | ``min_cells``                     |
|                                   |    minimum number of target cell  |
|                                   |    type                           |
|                                   |                                   |
|                                   | ``min_int_cells``                 |
|                                   |    minimum number of interacting  |
|                                   |    cell type                      |
|                                   |                                   |
|                                   | ``min_fdr``                       |
|                                   |    minimum adjusted p-value       |
|                                   |                                   |
|                                   | ``min_spat_diff``                 |
|                                   |    minimum absolute spatial       |
|                                   |    expression difference          |
|                                   |                                   |
|                                   | ``min_log2_fc``                   |
|                                   |    minimum absolute log2          |
|                                   |    fold-change                    |
|                                   |                                   |
|                                   | ``do_parallel``                   |
|                                   |    run calculations in parallel   |
|                                   |    with mclapply                  |
|                                   |                                   |
|                                   | ``verbose``                       |
|                                   |    verbose                        |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``combineICF``
