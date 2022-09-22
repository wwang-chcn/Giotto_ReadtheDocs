==============================
evaluate_spatial_locations_OLD
==============================

:Date: 2022-09-22

Description
===========

Evaluate spatial location input

Usage
=====

.. code:: r

   evaluate_spatial_locations_OLD(
     spatial_locs,
     cores = 1,
     dummy_n = 2,
     expr_matrix = NULL
   )

Arguments
=========

================ ===============================================
Argument         Description
================ ===============================================
``spatial_locs`` spatial locations to evaluate
``cores``        how many cores to use
``dummy_n``      number of rows to create dummy spaial locations
``expr_matrix``  expression matrix to compare the cell IDs with
================ ===============================================

Value
=====

data.table
