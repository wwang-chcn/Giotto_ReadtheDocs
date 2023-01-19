===========
data_access
===========

:Date: 1/19/23

``data_access``
===============

Giotto object data accessors

Description
-----------

Access or examine slots within the giotto object

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
| ``return_uniques``            | return unique nesting names (ignores |
|                               | if final object exists/is correct    |
|                               | class)                               |
+-------------------------------+--------------------------------------+
| ``output``                    | what format in which to get          |
|                               | information (e.g. “data.table”)      |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+
| ``copy_obj``                  | whether to deep copy/duplicate when  |
|                               | getting the object (default = TRUE)  |
|                               | expression and spat_info are not     |
|                               | expected to exist.                   |
+-------------------------------+--------------------------------------+
