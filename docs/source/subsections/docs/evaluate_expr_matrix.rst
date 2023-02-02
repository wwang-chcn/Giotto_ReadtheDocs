Evaluate expression matrix
--------------------------

Description
~~~~~~~~~~~

Evaluate expression matrices that are provided as input and converts
them to preferred format for Giotto object. A filepath can also be
provided through ``inputmatrix`` param. If this is done, the function
will attempt to read the matrix file in using ``readExprMatrix``.

Usage
~~~~~

::

   evaluate_expr_matrix(inputmatrix, sparse = TRUE, cores = NA)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``inputmatrix``                   | inputmatrix to evaluate           |
+-----------------------------------+-----------------------------------+
| ``sparse``                        | create sparse matrix (default =   |
|                                   | TRUE)                             |
+-----------------------------------+-----------------------------------+
| ``cores``                         | how many cores to use             |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

The inputmatrix can be a matrix, sparse matrix, data.frame, data.table
or path to any of these.

Value
~~~~~

sparse matrix
