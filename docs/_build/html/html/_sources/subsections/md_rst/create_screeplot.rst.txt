.. _create_screeplot:
``create_screeplot``
========================

create_screeplot

Description
-----------

create screeplot with ggplot

Usage
-----

.. code-block:: r

   create_screeplot(pca_obj, ncp = 20, ylim = c(0, 20))

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``pca_obj``
     - pca dimension reduction object
   * - ``ncp``
     - number of principal components to calculate
   * - ``ylim``
     - y-axis limits on scree plot


Value
-----

ggplot
