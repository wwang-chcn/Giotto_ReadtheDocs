makeSignMatrixDWLSfromMatrix
----------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L59
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to convert a single-cell RNAseq matrix into a format that can
be used with ``runDWLSDeconv``.

Usage
~~~~~

::

   makeSignMatrixDWLSfromMatrix(matrix, sign_gene, cell_type_vector)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``matrix``                        | scRNA-seq matrix                  |
+-----------------------------------+-----------------------------------+
| ``sign_gene``                     | genes to use (e.g. marker genes)  |
+-----------------------------------+-----------------------------------+
| ``cell_type_vector``              | vector with cell types (length =  |
|                                   | ncol(matrix))                     |
+-----------------------------------+-----------------------------------+

Value
~~~~~

matrix

See Also
~~~~~~~~

``runDWLSDeconv``
