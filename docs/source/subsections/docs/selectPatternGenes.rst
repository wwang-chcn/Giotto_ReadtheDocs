selectPatternGenes
------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L2857
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Select genes correlated with spatial patterns

Usage
~~~~~

::

   selectPatternGenes(
     spatPatObj,
     dimensions = 1:5,
     top_pos_genes = 10,
     top_neg_genes = 10,
     min_pos_cor = 0.5,
     min_neg_cor = -0.5,
     return_top_selection = FALSE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``spatPatObj``                    | Output from detectSpatialPatterns |
+-----------------------------------+-----------------------------------+
| ``dimensions``                    | dimensions to identify correlated |
|                                   | genes for.                        |
+-----------------------------------+-----------------------------------+
| ``top_pos_genes``                 | Top positively correlated genes.  |
+-----------------------------------+-----------------------------------+
| ``top_neg_genes``                 | Top negatively correlated genes.  |
+-----------------------------------+-----------------------------------+
| ``min_pos_cor``                   | Minimum positive correlation      |
|                                   | score to include a gene.          |
+-----------------------------------+-----------------------------------+
| ``min_neg_cor``                   | Minimum negative correlation      |
|                                   | score to include a gene.          |
+-----------------------------------+-----------------------------------+
| ``return_top_selection``          | only return selection based on    |
|                                   | correlation criteria (boolean)    |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Description.

Value
~~~~~

Data.table with genes associated with selected dimension (PC).
