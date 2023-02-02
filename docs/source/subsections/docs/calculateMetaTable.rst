calculateMetaTable
------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L4118
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

calculates the average gene expression for one or more (combined)
annotation columns.

Usage
~~~~~

::

   calculateMetaTable(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     metadata_cols = NULL,
     selected_feats = NULL,
     selected_genes = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use          |
+-----------------------------------+-----------------------------------+
| ``metadata_cols``                 | annotation columns found in       |
|                                   | ``pDataDT(gobject)``              |
+-----------------------------------+-----------------------------------+
| ``selected_feats``                | subset of features to use         |
+-----------------------------------+-----------------------------------+
| ``selected_genes``                | subset of genes to use            |
|                                   | (deprecated)                      |
+-----------------------------------+-----------------------------------+

Value
~~~~~

data.table with average expression values for each gene per (combined)
annotation
