================
list_giotto_data
================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L1952

===========

list the available data within specified giotto object slot

Usage
=====

.. code:: r

   list_giotto_data(gobject = NULL, slot = NULL, ...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``slot``                      | giotto object slot of interest       |
|                               | (e.g.Â â€œexpressionâ€, â€œspatial_locsâ€,  |
|                               | etc.)                                |
+-------------------------------+--------------------------------------+
| ``...``                       | additional params to pass            |
+-------------------------------+--------------------------------------+

Value
=====

names and locations of data within giotto object slot
