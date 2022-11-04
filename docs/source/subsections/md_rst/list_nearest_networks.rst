=====================
list_nearest_networks
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/accessors.R#L2311

===========

return the available nearest neighbor network information

Usage
=====

.. code:: r

   list_nearest_networks(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     nn_type = NULL,
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
| ``nn_type``                   | nearest neighbor method (e.g.Â â€œsNNâ€, |
|                               | â€œkNNâ€)                               |
+-------------------------------+--------------------------------------+
| ``return_uniques``            | return unique nesting names (ignores |
|                               | if final object exists/is correct    |
|                               | class)                               |
+-------------------------------+--------------------------------------+

Value
=====

names and locations of nearest neighbor networks as a data.table
