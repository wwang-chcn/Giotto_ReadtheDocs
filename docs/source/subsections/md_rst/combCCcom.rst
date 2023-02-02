combCCcom
---------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction.R#L2811
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Combine spatial and expression based cell-cell communication data.tables

Usage
~~~~~

::

   combCCcom(
     spatialCC,
     exprCC,
     min_lig_nr = 3,
     min_rec_nr = 3,
     min_padj_value = 1,
     min_log2fc = 0,
     min_av_diff = 0,
     detailed = FALSE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``spatialCC``                     | spatial cell-cell communication   |
|                                   | scores                            |
+-----------------------------------+-----------------------------------+
| ``exprCC``                        | expression cell-cell              |
|                                   | communication scores              |
+-----------------------------------+-----------------------------------+
| ``min_lig_nr``                    | minimum number of ligand cells    |
+-----------------------------------+-----------------------------------+
| ``min_rec_nr``                    | minimum number of receptor cells  |
+-----------------------------------+-----------------------------------+
| ``min_padj_value``                | minimum adjusted p-value          |
+-----------------------------------+-----------------------------------+
| ``min_log2fc``                    | minimum log2 fold-change          |
+-----------------------------------+-----------------------------------+
| ``min_av_diff``                   | minimum average expression        |
|                                   | difference                        |
+-----------------------------------+-----------------------------------+
| ``detailed``                      | detailed option used with         |
|                                   | ``spatCellCellcom`` (default =    |
|                                   | FALSE)                            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

combined data.table with spatial and expression communication data
