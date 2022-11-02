====================
create_jackstrawplot
====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/dimension_reduction.R#L836

===========

create jackstrawplot with ggplot

Usage
=====

.. code:: r

   create_jackstrawplot(
     jackstraw_data,
     ncp = 20,
     ylim = c(0, 1),
     threshold = 0.01
   )

Arguments
=========

================== ===========================================
Argument           Description
================== ===========================================
``jackstraw_data`` result from jackstraw function
``ncp``            number of principal components to calculate
``ylim``           y-axis limits on jackstraw plot
``threshold``      p.value threshold to call a PC significant
================== ===========================================

Value
=====

ggplot
