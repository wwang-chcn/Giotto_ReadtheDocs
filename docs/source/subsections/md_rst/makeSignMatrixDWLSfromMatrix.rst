============================
makeSignMatrixDWLSfromMatrix
============================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L59

Description
===========

Function to convert a single-cell RNAseq matrix into a format that can
be used with ```runDWLSDeconv`` <#rundwlsdeconv>`__ .

Usage
=====

.. code:: r

   makeSignMatrixDWLSfromMatrix(matrix, sign_gene, cell_type_vector)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``matrix``                    | scRNA-seq matrix                     |
+-------------------------------+--------------------------------------+
| ``sign_gene``                 | genes to use (e.g. marker genes)     |
+-------------------------------+--------------------------------------+
| ``cell_type_vector``          | vector with cell types (length =     |
|                               | ncol(matrix))                        |
+-------------------------------+--------------------------------------+

Value
=====

matrix

Seealso
=======

```runDWLSDeconv`` <#rundwlsdeconv>`__
