=====================
list_nearest_networks
=====================

:Date: 2022-10-06

Description
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
| ``spat_unit``                 | spatial unit (e.g. “cell”)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g. “rna”, “dna”,     |
|                               | “protein”)                           |
+-------------------------------+--------------------------------------+
| ``nn_type``                   | nearest neighbor method (e.g. “sNN”, |
|                               | “kNN”)                               |
+-------------------------------+--------------------------------------+
| ``return_uniques``            | return unique nesting names (ignores |
|                               | if final object exists/is correct    |
|                               | class)                               |
+-------------------------------+--------------------------------------+

Value
=====

names and locations of nearest neighbor networks as a data.table
