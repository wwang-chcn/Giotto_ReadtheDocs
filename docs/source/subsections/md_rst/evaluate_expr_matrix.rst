
``evaluate_expr_matrix``
============================

evaluate_expr_matrix

Description
-----------

Evaluate expression matrices.

Usage
-----

.. code-block:: r

   evaluate_expr_matrix(inputmatrix, sparse = TRUE, cores = NA)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``inputmatrix``
     - inputmatrix to evaluate
   * - ``sparse``
     - create sparse matrix (default = TRUE)
   * - ``cores``
     - how many cores to use


Details
-------

The inputmatrix can be a matrix, sparse matrix, data.frame, data.table or path to any of these.

Value
-----

sparse matrix
