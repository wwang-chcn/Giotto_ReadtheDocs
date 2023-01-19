=================
joinGiottoObjects
=================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L4551



   :format: latex
..

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

-  list(list(list(â€œ"shift"â€))) list(â€œ:raw-latex:`\n`â€, â€ (default)
   Spatial locations of different datasets are shifted:raw-latex:`\n`â€œ,â€
   by numeric vectors of values supplied through â€œ, list(â€x_shiftâ€),
   â€œ,â€, list(â€œy_shiftâ€), â€œ,:raw-latex:`\n`â€, â€ â€œ, list(â€x_paddingâ€), â€œ,
   andâ€, list(â€œy_paddingâ€), â€œ. This is particularly useful for
   data:raw-latex:`\n`â€, â€ that is provided as tiles or ROIs or when
   analyzing multiple spatial datasets:raw-latex:`\n`â€œ,â€ together and
   keeping their spatial data
   separate.:raw-latex:`\n`â€œ,â€:raw-latex:`\n`â€œ,â€ â€œ, list(â€If shift
   values are given then a value is needed for each giotto
   object:raw-latex:`\n`â€œ,â€ to be joined in â€œ, list(â€gobject_listâ€), â€œ.
   Order matters.â€), â€œ:raw-latex:`\n`â€, â€œ:raw-latex:`\n`â€, â€ If a
   regular step value is desired instead of a specific list of values,
   use:raw-latex:`\n`â€œ,â€ â€œ, list(â€x_paddingâ€), â€ and â€œ,
   list(â€y_paddingâ€), â€œ. Both shift and padding values can be
   used:raw-latex:`\n`â€, â€ at the same
   time.:raw-latex:`\n`â€œ,â€:raw-latex:`\n`â€œ,â€ Leaving â€œ, list(â€x_shiftâ€),
   â€ and â€œ, list(â€y_shiftâ€), â€ values as â€œ, list(â€NULLâ€), â€ will have
   Giotto:raw-latex:`\n`â€œ,â€ estimate an appropriate â€œ, list(â€x_shiftâ€),
   â€ value based on the x dimension of:raw-latex:`\n`â€œ,â€ available image
   objects. If no image objects are available, a default behavior
   of:raw-latex:`\n`â€œ,â€ â€œ, list(â€x_padding = 1000â€), â€ will be
   applied.:raw-latex:`\n`â€œ,â€ â€œ)

-  list(list(list(â€œ"z_stack"â€))) list(â€œ:raw-latex:`\n`â€, â€ Datasets are
   spatially combined with no change to x and y:raw-latex:`\n`â€œ,â€
   spatial locations, but a z value is incorporated for each dataset
   based on input:raw-latex:`\n`â€œ,â€ supplied through param â€œ,
   list(â€z_valsâ€), â€œ. To specify a z value for each dataset
   to:raw-latex:`\n`â€, â€ join, a numeric vector must be given with a
   value for each element in â€œ, list(â€gobject_listâ€),
   â€œ.:raw-latex:`\n`â€, â€ Order
   matters.:raw-latex:`\n`â€œ,â€:raw-latex:`\n`â€œ,â€ Alternatively, a single
   numeric value can be supplied to â€œ, list(â€z_valsâ€), â€ in
   which:raw-latex:`\n`â€œ,â€ case this input will be treated as a z step
   value.:raw-latex:`\n`â€œ,â€ â€œ)

-  list(list(list(â€œ"no_change"â€))) list(â€œ:raw-latex:`\n`â€, â€ No changes
   are applied to the spatial locations of the datasets when
   joining.:raw-latex:`\n`â€œ,â€ â€œ)

Value
-----

giotto object
 â€œ)

Value
-----

giotto object
