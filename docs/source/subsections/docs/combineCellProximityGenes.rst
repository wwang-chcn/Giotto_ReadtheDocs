combineCellProximityGenes
-------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1917
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

   combineCellProximityGenes(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``combineInteractionChangedFeats` |
|                                   | `                                 |
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
|                                   |    subset of selected Features    |
|                                   |    (optional)                     |
|                                   |                                   |
|                                   | ``specific_feats_1``              |
|                                   |    specific Featureset combo      |
|                                   |    (need to position match        |
|                                   |    specific_feats_2)              |
|                                   |                                   |
|                                   | ``specific_feats_2``              |
|                                   |    specific Featureset combo      |
|                                   |    (need to position match        |
|                                   |    specific_feats_1)              |
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

``combineInteractionChangedFeats``
