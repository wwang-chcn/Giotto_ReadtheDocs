convertEnsemblToGeneSymbol
--------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/general_help.R#L1221
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

This function convert ensembl gene IDs from a matrix to official gene
symbols

Usage
~~~~~

::

   convertEnsemblToGeneSymbol(matrix, species = c("mouse", "human"))

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``matrix``                        | an expression matrix with ensembl |
|                                   | gene IDs as rownames              |
+-----------------------------------+-----------------------------------+
| ``species``                       | species to use for gene symbol    |
|                                   | conversion                        |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

This function requires that the biomaRt library is installed

Value
~~~~~

expression matrix with gene symbols as rownames
