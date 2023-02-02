Giotto object data accessors
----------------------------

Description
~~~~~~~~~~~

Access or examine slots within the giotto object

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
| ``return_uniques``                | return unique nesting names       |
|                                   | (ignores if final object          |
|                                   | exists/is correct class)          |
+-----------------------------------+-----------------------------------+
| ``output``                        | what format in which to get       |
|                                   | information (e.g. "data.table")   |
+-----------------------------------+-----------------------------------+
| ``set_defaults``                  | set default spat_unit and         |
|                                   | feat_type. Change to FALSE only   |
|                                   | when expression and spat_info are |
|                                   | not expected to exist.            |
+-----------------------------------+-----------------------------------+
