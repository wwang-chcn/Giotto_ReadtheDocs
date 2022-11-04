=========================
do_spatial_grid_averaging
=========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L3024

===========

smooth gene expression over a defined spatial grid

Usage
=====

.. code:: r

   do_spatial_grid_averaging(
     expression_matrix,
     spatial_grid,
     spatial_locs,
     subset_feats = NULL,
     min_cells_per_grid = 4
   )

Value
=====

matrix with smoothened gene expression values based on spatial grid
