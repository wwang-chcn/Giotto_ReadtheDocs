=================
get_cell_metadata
=================

:Date: 1/19/23

``get_cell_metadata``
=====================

Get cell metadata

Description
-----------

Get cell metadata from giotto object

Usage
-----

.. code:: r

   get_cell_metadata(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     output = c("cellMetaObj", "data.table"),
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
|                               | ‘cellMetaObj’                        |
+-------------------------------+--------------------------------------+
| ``copy_obj``                  | whether to deep copy/duplicate when  |
|                               | getting the object (default = TRUE)  |
|                               | expression and spat_info are not     |
|                               | expected to exist.                   |
+-------------------------------+--------------------------------------+
| ``set_defaults``              | set default spat_unit and feat_type. |
|                               | Change to FALSE only when            |
+-------------------------------+--------------------------------------+

Seealso
-------

pDataDT
