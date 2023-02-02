Read expression matrix
----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L409
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to read an expression matrix into a sparse matrix.

Usage
~~~~~

::

   readExprMatrix(path, cores = NA, transpose = FALSE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``path``                          | path to the expression matrix     |
+-----------------------------------+-----------------------------------+
| ``cores``                         | number of cores to use            |
+-----------------------------------+-----------------------------------+
| ``transpose``                     | transpose matrix                  |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

The expression matrix needs to have both unique column names and row
names

Value
~~~~~

sparse matrix
