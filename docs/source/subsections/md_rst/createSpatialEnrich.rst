===================
createSpatialEnrich
===================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L1376

   :format: latex
..

Description
===========

Function to calculate gene signature enrichment scores per spatial
position using an enrichment test.

Usage
=====

.. code:: r

   createSpatialEnrich(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```runSp                             |
|                               | atialEnrich`` <#runspatialenrich>`__ |
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
|                               | list(list(list(â€enrich_methodâ€)),    |
|                               | list(â€œmethod for gene signature      |
|                               | enrichment calculationâ€)),           |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€sign_matrixâ€)),      |
|                               | list(â€œMatrix of signature genes for  |
|                               | each cell type / processâ€)),         |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | l                                    |
|                               | ist(list(list(â€expression_valuesâ€)), |
|                               | list(â€œexpression values to useâ€)),   |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("reverse_log_scale")), list("reverse expression values from log scale")), "\n", "    ", list(list(list("min_overlap_genes")), list("minimum number of overlapping genes in sign_matrix required to calculate enrichment (PAGE)")), "\n", "    ", list(list(list("logbase")), list("log base to use if reverse_log_scale = TRUE")), "\n", "    ", list(list(list("p_value")), list("calculate p-value (default = FALSE)")), "\n", "    ", list(list(list("n_times")), list("(page/rank) number of permutation iterations to calculate p-value")), 
   "\n", "    ", list(list(list("rbp_p")), list("(rank) fractional binarization threshold (default = 0.99)")), "\n", "    ", list(list(list("num_agg")), list("(rank) number of top genes to aggregate (default = 100)")), "\n", "    ", list(list(list("max_block")), list("number of lines to process together (default = 20e6)")), "\n", "    ", list(list(list("top_percentage")), list("(hyper) percentage of cells that will be considered to have gene expression with matrix binarization")), "\n", "    ", 
   list(list(list("output_enrichment")), list("how to return enrichment output")), "\n", "    ", list(list(list("name")), list("to give to spatial enrichment results, default = PAGE")), "\n", "    ", list(list(list("verbose")), list("be verbose")), "\n", "    ", list(list(list("return_gobject")), list("return giotto object")), "\n", "  ")

Seealso
=======

```runSpatialEnrich`` <#runspatialenrich>`__
