==========
rankEnrich
==========

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1077

   :format: latex
..

Description
===========

Function to calculate gene signature enrichment scores per spatial
position using a rank based approach.

Usage
=====

.. code:: r

   rankEnrich(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ``                                   |
|                               | `runRankEnrich`` <#runrankenrich>`__ |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€gobjectâ€)),          |
|                               | list(â€œGiotto objectâ€)),              |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€spat_unitâ€)),        |
|                               | list(â€œspatial unitâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€feat_typeâ€)),        |
|                               | list(â€œfeature typeâ€)),               |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€sign_matrixâ€)),      |
|                               | list(â€œMatrix of signature genes for  |
|                               | each cell type / processâ€)),         |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | l                                    |
|                               | ist(list(list(â€expression_valuesâ€)), |
|                               | list(â€œexpression values to useâ€)),   |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | l                                    |
|                               | ist(list(list(â€reverse_log_scaleâ€)), |
|                               | list(â€œreverse expression values from |
|                               | log scaleâ€)),                        |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("logbase")), list("log base to use if reverse_log_scale = TRUE")), "\n", "    ", list(list(list("output_enrichment")), list("how to return enrichment output")), "\n", "    ", list(list(list("ties_method")), list("how to handle rank ties")), "\n", "    ", list(list(list("p_value")), list("calculate p-values (boolean, default = FALSE)")), "\n", "    ", list(list(list("n_times")), list("number of permutations to calculate for p_value")), "\n", "    ", list(list(list(
       "rbp_p")), list("fractional binarization threshold (default = 0.99)")), "\n", "    ", list(list(list("num_agg")), list("number of top genes to aggregate (default = 100)")), "\n", "    ", list(list(list("name")), list("to give to spatial enrichment results, default = rank")), "\n", "    ", list(list(list("return_gobject")), list("return giotto object")), "\n", "  ")

Seealso
=======

```runRankEnrich`` <#runrankenrich>`__
