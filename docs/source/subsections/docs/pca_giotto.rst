pca_giotto
----------

Description
~~~~~~~~~~~

performs PCA based on Rfast

Usage
~~~~~

::

   pca_giotto(mymatrix, center = T, scale = T, k = 50)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``mymatrix``                      | matrix or object that can be      |
|                                   | converted to matrix               |
+-----------------------------------+-----------------------------------+
| ``center``                        | center data                       |
+-----------------------------------+-----------------------------------+
| ``scale``                         | scale features                    |
+-----------------------------------+-----------------------------------+
| ``k``                             | number of principal components to |
|                                   | calculate                         |
+-----------------------------------+-----------------------------------+

Value
~~~~~

list of eigenvalues, eigenvectors and pca coordinates
