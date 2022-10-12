============
subsetGiotto
============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L854

Description
===========

Subsets Giotto object including previous analyses.

Usage
=====

.. code:: r

   subsetGiotto(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     cell_ids = NULL,
     feat_ids = NULL,
     gene_ids = NULL,
     poly_info = NULL,
     x_max = NULL,
     x_min = NULL,
     y_max = NULL,
     y_min = NULL,
     verbose = TRUE,
     toplevel_params = 2
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type to use                  |
+-------------------------------+--------------------------------------+
| ``cell_ids``                  | cell IDs to keep                     |
+-------------------------------+--------------------------------------+
| ``feat_ids``                  | feature IDs to keep                  |
+-------------------------------+--------------------------------------+
| ``gene_ids``                  | deprecated, use feat_ids             |
+-------------------------------+--------------------------------------+
| ``poly_info``                 | polygon information to use           |
+-------------------------------+--------------------------------------+
| `                             | minimum and maximum x and y          |
| `x_max, x_min, y_max, y_min`` | coordinates to keep for feature      |
|                               | coordinates                          |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``toplevel_params``           | parameters to extract                |
+-------------------------------+--------------------------------------+

Details
=======

Subsets a Giotto object for a specific spatial unit and feature type

Value
=====

giotto object
