
``evaluate_spatial_locations``
==================================

evaluate_spatial_locations

Description
-----------

Evaluate spatial location input

Usage
-----

.. code-block:: r

   evaluate_spatial_locations(
     spatial_locs,
     cores = 1,
     dummy_n = 2,
     expr_matrix = NULL
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``spatial_locs``
     - spatial locations to evaluate
   * - ``cores``
     - how many cores to use
   * - ``dummy_n``
     - number of rows to create dummy spaial locations
   * - ``expr_matrix``
     - expression matrix to compare the cell IDs with


Value
-----

data.table
