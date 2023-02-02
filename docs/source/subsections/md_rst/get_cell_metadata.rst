Get cell metadata
-----------------

Description
~~~~~~~~~~~

Get cell metadata from giotto object

Usage
~~~~~

::

   get_cell_metadata(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     output = c("cellMetaObj", "data.table"),
     copy_obj = TRUE,
     set_defaults = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``output``                        | return as either 'data.table' or  |
|                                   | 'cellMetaObj'                     |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

pDataDT
