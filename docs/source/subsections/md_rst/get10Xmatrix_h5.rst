===============
get10Xmatrix_h5
===============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/general_help.R#L898

Description
===========

This function creates an expression matrix from a 10X h5 file path

Usage
=====

.. code:: r

   get10Xmatrix_h5(path_to_data, gene_ids = c("symbols", "ensembl"))

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``path_to_data``              | path to the 10X .h5 file             |
+-------------------------------+--------------------------------------+
| ``gene_ids``                  | use gene symbols (default) or        |
|                               | ensembl ids for the gene expression  |
|                               | matrix                               |
+-------------------------------+--------------------------------------+

Details
=======

If the .h5 10x file has multiple modalities (e.g. RNA and protein),
multiple matrices will be returned

Value
=====

(list of) sparse expression matrix from 10X
