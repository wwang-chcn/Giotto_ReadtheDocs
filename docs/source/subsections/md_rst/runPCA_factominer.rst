=================
runPCA_factominer
=================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/dimension_reduction.R#L164

===========

performs PCA based on the factominer package

Usage
=====

.. code:: r

   runPCA_factominer(
     x,
     ncp = 100,
     scale = TRUE,
     rev = FALSE,
     set_seed = TRUE,
     seed_number = 1234,
     ...
   )

Arguments
=========

=============== ================================================
Argument        Description
=============== ================================================
``x``           matrix or object that can be converted to matrix
``ncp``         number of principal components to calculate
``scale``       scale features
``rev``         reverse PCA
``set_seed``    use of seed
``seed_number`` seed number to use
=============== ================================================

Value
=====

list of eigenvalues, loadings and pca coordinates
