Add gene metadata
-----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3535
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

adds gene metadata to the giotto object

Usage
~~~~~

::

   addGeneMetadata(gobject, new_metadata, by_column = F, column_gene_ID = NULL)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``new_metadata``                  | new metadata to use               |
+-----------------------------------+-----------------------------------+
| ``by_column``                     | merge metadata based on gene_ID   |
|                                   | column in ``fDataDT``             |
+-----------------------------------+-----------------------------------+
| ``column_gene_ID``                | column name of new metadata to    |
|                                   | use if ``by_column = TRUE``       |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

You can add additional gene metadata in two manners: 1. Provide a
data.table or data.frame with gene annotations in the same order as the
gene_ID column in fDataDT(gobject) 2. Provide a data.table or data.frame
with gene annotations and specify which column contains the gene IDs,
these gene IDs need to match with the gene_ID column in fDataDT(gobject)

Value
~~~~~

giotto object
