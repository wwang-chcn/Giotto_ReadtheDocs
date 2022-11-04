================
create_screeplot
================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/dimension_reduction.R#L611

===========

create screeplot with ggplot

Usage
=====

.. code:: r

   create_screeplot(pca_obj, ncp = 20, ylim = c(0, 20))

Arguments
=========

=========== ===========================================
Argument    Description
=========== ===========================================
``pca_obj`` pca dimension reduction object
``ncp``     number of principal components to calculate
``ylim``    y-axis limits on scree plot
=========== ===========================================

Value
=====

ggplot
