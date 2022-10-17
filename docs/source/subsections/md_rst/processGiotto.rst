=============
processGiotto
=============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2234

Description
===========

Wrapper for the different Giotto object processing functions

Usage
=====

.. code:: r

   processGiotto(
     gobject,
     filter_params = list(),
     norm_params = list(),
     stat_params = list(),
     adjust_params = list(),
     verbose = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``filter_params``             | additional parameters to             |
|                               | filterGiotto                         |
+-------------------------------+--------------------------------------+
| ``norm_params``               | additional parameters to             |
|                               | normalizeGiotto                      |
+-------------------------------+--------------------------------------+
| ``stat_params``               | additional parameters to             |
|                               | addStatistics                        |
+-------------------------------+--------------------------------------+
| ``adjust_params``             | additional parameters to             |
|                               | adjustGiottoMatrix; set to NULL if   |
|                               | not required                         |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose (default is TRUE)         |
+-------------------------------+--------------------------------------+

Details
=======

See ```filterGiotto`` <#filtergiotto>`__ ,
```normalizeGiotto`` <#normalizegiotto>`__ ,
```addStatistics`` <#addstatistics>`__ , and
```adjustGiottoMatrix`` <#adjustgiottomatrix>`__ . For more information
about the different parameters in each step. If you do not provide them
it will use the default values. If no adjustment is required,
adjust_params must be set to NULL

Value
=====

giotto object
