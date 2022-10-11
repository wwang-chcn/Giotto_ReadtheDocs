=================
joinGiottoObjects
=================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L3631

Description
===========

Function to join multiple giotto objects together

Usage
=====

.. code:: r

   joinGiottoObjects(
     gobject_list,
     gobject_names = NULL,
     join_method = c("shift", "z_stack", "no_change"),
     z_vals = 1000,
     x_shift = NULL,
     y_shift = NULL,
     x_padding = 0,
     y_padding = 0,
     verbose = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject_list``              | list of giotto objects               |
+-------------------------------+--------------------------------------+
| ``gobject_names``             | unique giotto names for each giotto  |
|                               | object                               |
+-------------------------------+--------------------------------------+
| ``join_method``               | method to join giotto objects, see   |
|                               | details                              |
+-------------------------------+--------------------------------------+
| ``z_vals``                    | distance(s) along z-axis if method   |
|                               | is z-stack (default is step of 1000) |
+-------------------------------+--------------------------------------+
| ``x_shift``                   | list of values to shift along x-axis |
|                               | if method is shift                   |
+-------------------------------+--------------------------------------+
| ``y_shift``                   | list of values to shift along y-axis |
|                               | if method is shift                   |
+-------------------------------+--------------------------------------+
| ``x_padding``                 | padding between datasets/images if   |
|                               | method is shift                      |
+-------------------------------+--------------------------------------+
| ``y_padding``                 | padding between datasets/images if   |
|                               | method is shift                      |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
=======

This function joins both the expression and spatial information of
multiple giotto objects into a single one. Giotto supports multiple ways
of joining spatial information as selected through param ``join_method``
:

[ â€œshiftâ€ ] Spatial locations of different datasets are shifted by
numeric vectors of values supplied through ``x_shift`` and ``y_shift`` .
If these shift values are given then one is needed for each giotto
object to be joined in ``gobject_list`` . Order matters. If a regular
step value is desired instead of a specific list of values, use
``x_padding`` and ``y_padding`` . Both shift and padding values can be
used at the same time. Leaving ``x_shift`` and ``y_shift`` values as
``NULL`` will have Giotto estimate an appropriate ``x_shift`` value
based on the x dimension of available image objects.

[ â€œz_stackâ€ ] Datasets are spatially combined with no change to x and y
spatial locations, but a z value is incorporated for each dataset based
on input supplied through param ``z_vals`` . To specify a z value for
each dataset to join, a numeric vector must be given with a value for
each element in ``gobject_list`` . Order matters. Alternatively, a
single numeric value can be supplied to ``z_vals`` in which case this
input will be treated as a z step value.

[ â€œno_changeâ€ ] No changes are applied to the spatial locations of the
datasets when joining.

Value
=====

giotto object
