====================
get_feature_metadata
====================

:Date: 1/19/23

``get_feature_metadata``
========================

Get feature metadata

Description
-----------

Get feature metadata from giotto object

Usage
-----

.. code:: r

   get_feature_metadata(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     output = c("featMetaObj", "data.table"),
     copy_obj = TRUE,
     set_defaults = TRUE
   )

Arguments
---------

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
| ``output``                    | return as either ‘data.table’ or     |
|                               | ‘featMetaObj’                        |
+-------------------------------+--------------------------------------+
| ``copy_obj``                  | whether to perform a deepcopy of the |
|                               | data.table information               |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Seealso
-------

fDataDT
