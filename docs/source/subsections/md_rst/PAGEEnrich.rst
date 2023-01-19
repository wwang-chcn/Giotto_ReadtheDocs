==========
PAGEEnrich
==========

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L848



   :format: latex
..

``PAGEEnrich``
==============

PAGEEnrich

Description
-----------

Function to calculate gene signature enrichment scores per spatial
position using PAGE.

Usage
-----

.. code:: r

   PAGEEnrich(...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ``                                   |
|                               | `runPAGEEnrich`` <#runpageenrich>`__ |
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
|                               | ist(list(list(â€min_overlap_genesâ€)), |
|                               | list(â€œminimum number of overlapping  |
|                               | genes in sign_matrix required to     |
|                               | calculate enrichmentâ€)),             |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("reverse_log_scale")), list("reverse expression values from log scale")), "\n", "    ", list(list(list("logbase")), list("log base to use if reverse_log_scale = TRUE")), "\n", "    ", list(list(list("output_enrichment")), list("how to return enrichment output")), "\n", "    ", list(list(list("p_value")), list("calculate p-values (boolean, default = FALSE)")), "\n", "    ", list(list(list("include_depletion")), list("calculate both enrichment and depletion")), "\n", 
   "    ", list(list(list("n_times")), list("number of permutations to calculate for p_value")), "\n", "    ", list(list(list("max_block")), list("number of lines to process together (default = 20e6)")), "\n", "    ", list(list(list("name")), list("to give to spatial enrichment results, default = PAGE")), "\n", "    ", list(list(list("verbose")), list("be verbose")), "\n", "    ", list(list(list("return_gobject")), list("return giotto object")), "\n", "  ")

Seealso
-------

```runPAGEEnrich`` <#runpageenrich>`__
