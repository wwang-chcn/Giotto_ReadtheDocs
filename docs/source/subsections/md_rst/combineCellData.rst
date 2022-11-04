===============
combineCellData
===============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2592


Description
===========

combine cell data information

Usage
=====

.. code:: r

   combineCellData(
     gobject,
     feat_type = "rna",
     include_spat_locs = TRUE,
     spat_loc_name = "raw",
     include_poly_info = TRUE,
     poly_info = "cell"
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``include_spat_locs``         | include information about spatial    |
|                               | locations                            |
+-------------------------------+--------------------------------------+
| ``spat_loc_name``             | spatial location name                |
+-------------------------------+--------------------------------------+
| ``include_poly_info``         | include information about polygon    |
+-------------------------------+--------------------------------------+
| ``poly_info``                 | polygon information name             |
+-------------------------------+--------------------------------------+

Value
=====

data.table with combined spatial information
