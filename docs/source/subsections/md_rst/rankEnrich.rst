==========
rankEnrich
==========

:Date: ymd

.. role:: raw-latex(raw)
   :format: latex
..

``rankEnrich``
==============

rankEnrich

Description
-----------

Function to calculate gene signature enrichment scores per spatial
position using a rank based approach.

Usage
-----

.. code:: r

   rankEnrich(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ``                                   |
|                               | `runRankEnrich`` <#runrankenrich>`__ |
|                               | list(“:raw-latex:`\n`”, ” “,         |
|                               | list(list(list(”gobject”)),          |
|                               | list(“Giotto object”)),              |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”spat_unit”)),        |
|                               | list(“spatial unit”)),               |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”feat_type”)),        |
|                               | list(“feature type”)),               |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | list(list(list(”sign_matrix”)),      |
|                               | list(“Matrix of signature genes for  |
|                               | each cell type / process”)),         |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | l                                    |
|                               | ist(list(list(”expression_values”)), |
|                               | list(“expression values to use”)),   |
|                               | “:raw-latex:`\n`”, ” “,              |
|                               | l                                    |
|                               | ist(list(list(”reverse_log_scale”)), |
|                               | list(“reverse expression values from |
|                               | log scale”)),                        |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("logbase")), list("log base to use if reverse_log_scale = TRUE")), "\n", "    ", list(list(list("output_enrichment")), list("how to return enrichment output")), "\n", "    ", list(list(list("ties_method")), list("how to handle rank ties")), "\n", "    ", list(list(list("p_value")), list("calculate p-values (boolean, default = FALSE)")), "\n", "    ", list(list(list("n_times")), list("number of permutations to calculate for p_value")), "\n", "    ", list(list(list(
       "rbp_p")), list("fractional binarization threshold (default = 0.99)")), "\n", "    ", list(list(list("num_agg")), list("number of top genes to aggregate (default = 100)")), "\n", "    ", list(list(list("name")), list("to give to spatial enrichment results, default = rank")), "\n", "    ", list(list(list("return_gobject")), list("return giotto object")), "\n", "  ")

Seealso
-------

```runRankEnrich`` <#runrankenrich>`__
