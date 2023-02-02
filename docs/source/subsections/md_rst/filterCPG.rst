filterCPG
---------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L1488
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Filter Interaction Changed Gene scores.

Usage
~~~~~

::

   filterCPG(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``filterICF``                     |
|                                   |                                   |
|                                   | ``icfObject``                     |
|                                   |    ICF (interaction changed       |
|                                   |    feature) score object          |
|                                   |                                   |
|                                   | ``min_cells``                     |
|                                   |    minimum number of source cell  |
|                                   |    type                           |
|                                   |                                   |
|                                   | ``min_cells_expr``                |
|                                   |    minimum expression level for   |
|                                   |    source cell type               |
|                                   |                                   |
|                                   | ``min_int_cells``                 |
|                                   |    minimum number of interacting  |
|                                   |    neighbor cell type             |
|                                   |                                   |
|                                   | ``min_int_cells_expr``            |
|                                   |    minimum expression level for   |
|                                   |    interacting neighbor cell type |
|                                   |                                   |
|                                   | ``min_fdr``                       |
|                                   |    minimum adjusted p-value       |
|                                   |                                   |
|                                   | ``min_spat_diff``                 |
|                                   |    minimum absolute spatial       |
|                                   |    expression difference          |
|                                   |                                   |
|                                   | ``min_log2_fc``                   |
|                                   |    minimum log2 fold-change       |
|                                   |                                   |
|                                   | ``min_zscore``                    |
|                                   |    minimum z-score change         |
|                                   |                                   |
|                                   | ``zscores_column``                |
|                                   |    calculate z-scores over cell   |
|                                   |    types or features              |
|                                   |                                   |
|                                   | ``direction``                     |
|                                   |    differential expression        |
|                                   |    directions to keep             |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``filterICF``
