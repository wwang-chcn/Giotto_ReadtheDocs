list_expression
---------------

Description
~~~~~~~~~~~

lists the available matrices

Usage
~~~~~

::

   list_expression(gobject, spat_unit = NULL, feat_type = NULL)

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

Value
~~~~~

names and locations of available matrices as data.table. col order
matters.
