========================
select_expression_values
========================

:Date: 1/19/23


``select_expression_values``
============================

select_expression_values

Description
-----------

select_expression_values

Usage
-----

.. code:: r

   select_expression_values(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```get_expressio                     |
|                               | n_values`` <#getexpressionvalues>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”values”)),           |
|                               | list(“expression values to extract   |
|                               | (e.g. "raw", "normalized",           |
|                               | "scaled")”)), “:raw-latex:`\n`”, ”   |
|                               | “, list(list(list(”output”)),        |
|                               | list(“what object type to retrieve   |
|                               | the expression as. Currently         |
|                               | either:raw-latex:`\n`”, “‘matrix’    |
|                               | for the matrix object contained in   |
|                               | the exprObj or ‘exprObj’ (default)   |
|                               | for:raw-latex:`\n`”, “the exprObj    |
|                               | itself are allowed.”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”gobject”)),          |
|                               | list(“giotto object”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”spat_unit”)),        |
|                               | list(“spatial unit (e.g. "cell")”)), |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("feat_type")), list("feature type (e.g. \"rna\", \"dna\", \"protein\")")), "\n", "    ", list(list(list("set_defaults")), list("set default spat_unit and feat_type. Change to FALSE only when")), "\n", "  ")

Seealso
-------

```get_expression_values`` <#getexpressionvalues>`__
