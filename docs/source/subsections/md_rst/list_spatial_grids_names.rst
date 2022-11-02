========================
list_spatial_grids_names
========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2635

===========

return the available spatial grids name for a given spatial unit that
are attached to the Giotto object

Usage
=====

.. code:: r

   list_spatial_grids_names(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     return_uniques = FALSE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``return_uniques``            | return unique nesting names (ignores |
|                               | if final object exists/is correct    |
|                               | class)                               |
+-------------------------------+--------------------------------------+

Value
=====

vector with names of available spatial grids names
