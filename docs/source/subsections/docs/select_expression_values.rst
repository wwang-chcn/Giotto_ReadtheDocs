select_expression_values
------------------------

Description
~~~~~~~~~~~

select_expression_values

Usage
~~~~~

::

   select_expression_values(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``get_expression_values``         |
|                                   |                                   |
|                                   | ``values``                        |
|                                   |    expression values to extract   |
|                                   |    (e.g. "raw", "normalized",     |
|                                   |    "scaled")                      |
|                                   |                                   |
|                                   | ``output``                        |
|                                   |    what object type to retrieve   |
|                                   |    the expression as. Currently   |
|                                   |    either 'matrix' for the matrix |
|                                   |    object contained in the        |
|                                   |    exprObj or 'exprObj' (default) |
|                                   |    for the exprObj itself are     |
|                                   |    allowed.                       |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``spat_unit``                     |
|                                   |    spatial unit (e.g. "cell")     |
|                                   |                                   |
|                                   | ``feat_type``                     |
|                                   |    feature type (e.g. "rna",      |
|                                   |    "dna", "protein")              |
|                                   |                                   |
|                                   | ``set_defaults``                  |
|                                   |    set default spat_unit and      |
|                                   |    feat_type. Change to FALSE     |
|                                   |    only when expression and       |
|                                   |    spat_info are not expected to  |
|                                   |    exist.                         |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``get_expression_values``
