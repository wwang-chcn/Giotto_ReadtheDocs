=================
joinGiottoObjects
=================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L4551


``joinGiottoObjects``
=====================

Join giotto objects

Description
-----------

Function to join multiple giotto objects together

Usage
-----

.. code:: r

   joinGiottoObjects(
     gobject_list,
     gobject_names = NULL,
     join_method = c("shift", "z_stack", "no_change"),
     z_vals = 1000,
     x_shift = NULL,
     y_shift = NULL,
     x_padding = NULL,
     y_padding = NULL,
     verbose = TRUE
   )

Arguments
---------

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
| ``verbose``                   | be verbose Preview where each        |
|                               | gobject will be in space with        |
|                               | bounding polygons                    |
+-------------------------------+--------------------------------------+

Details
-------

This function joins both the expression and spatial information of
multiple giotto objects into a single one. Giotto supports multiple ways
of joining spatial information as selected through param ``join_method``
:

-  list(list(list(“"shift"�))) list(“:raw-latex:`\n`�, � (default)
   Spatial locations of different datasets are shifted:raw-latex:`\n`“,�
   by numeric vectors of values supplied through “, list(�x_shift�),
   “,�, list(“y_shift�), “,:raw-latex:`\n`�, � “, list(�x_padding�), “,
   and�, list(“y_padding�), “. This is particularly useful for
   data:raw-latex:`\n`�, � that is provided as tiles or ROIs or when
   analyzing multiple spatial datasets:raw-latex:`\n`“,� together and
   keeping their spatial data
   separate.:raw-latex:`\n`“,�:raw-latex:`\n`“,� “, list(�If shift
   values are given then a value is needed for each giotto
   object:raw-latex:`\n`“,� to be joined in “, list(�gobject_list�), “.
   Order matters.�), “:raw-latex:`\n`�, “:raw-latex:`\n`�, � If a
   regular step value is desired instead of a specific list of values,
   use:raw-latex:`\n`“,� “, list(�x_padding�), � and “,
   list(�y_padding�), “. Both shift and padding values can be
   used:raw-latex:`\n`�, � at the same
   time.:raw-latex:`\n`“,�:raw-latex:`\n`“,� Leaving “, list(�x_shift�),
   � and “, list(�y_shift�), � values as “, list(�NULL�), � will have
   Giotto:raw-latex:`\n`“,� estimate an appropriate “, list(�x_shift�),
   � value based on the x dimension of:raw-latex:`\n`“,� available image
   objects. If no image objects are available, a default behavior
   of:raw-latex:`\n`“,� “, list(�x_padding = 1000�), � will be
   applied.:raw-latex:`\n`“,� “)

-  list(list(list(“"z_stack"�))) list(“:raw-latex:`\n`�, � Datasets are
   spatially combined with no change to x and y:raw-latex:`\n`“,�
   spatial locations, but a z value is incorporated for each dataset
   based on input:raw-latex:`\n`“,� supplied through param “,
   list(�z_vals�), “. To specify a z value for each dataset
   to:raw-latex:`\n`�, � join, a numeric vector must be given with a
   value for each element in “, list(�gobject_list�),
   “.:raw-latex:`\n`�, � Order
   matters.:raw-latex:`\n`“,�:raw-latex:`\n`“,� Alternatively, a single
   numeric value can be supplied to “, list(�z_vals�), � in
   which:raw-latex:`\n`“,� case this input will be treated as a z step
   value.:raw-latex:`\n`“,� “)

-  list(list(list(“"no_change"�))) list(“:raw-latex:`\n`�, � No changes
   are applied to the spatial locations of the datasets when
   joining.:raw-latex:`\n`“,� “)

Value
-----

giotto object
 “)

Value
-----

giotto object
