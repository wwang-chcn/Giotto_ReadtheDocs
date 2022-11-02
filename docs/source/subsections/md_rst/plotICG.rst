=======
plotICG
=======

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_interaction_visuals.R#L1666

   :format: latex
..

Description
===========

Create barplot to visualize interaction changed features

Usage
=====

.. code:: r

   plotICG(...)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``...``                       | Arguments passed on to               |
|                               | ```plotICF`` <#ploticf>`__           |
|                               | list(â€œ:raw-latex:`\n`â€, â€ â€œ,         |
|                               | list(list(list(â€gobjectâ€)),          |
|                               | list(â€œgiotto objectâ€)),              |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€icfObjectâ€)),        |
|                               | list(â€œICF (interaction changed       |
|                               | feature) score objectâ€)),            |
|                               | â€œ:raw-latex:`\n`â€, â€ â€œ,              |
|                               | list(list(list(â€source_typeâ€)),      |
|                               | list(â€œcell type of the source        |
|                               | cellâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,     |
|                               | list(list(list(â€source_markersâ€)),   |
|                               | list(â€œmarkers for the source cell    |
|                               | typeâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ,     |
|                               | list(list(list(â€ICF_featsâ€)),        |
|                               | list(â€œnamed character vector of ICF  |
|                               | featuresâ€)), â€œ:raw-latex:`\n`â€, â€ â€œ, |
|                               | list(list(list(â€cell_color_codeâ€)),  |
|                               | list(â€œcell color code for the        |
|                               | interacting cell typesâ€)),           |
+-------------------------------+--------------------------------------+

::

   "\n", "    ", list(list(list("show_plot")), list("show plots")), "\n", "    ", list(list(list("return_plot")), list("return plotting object")), "\n", "    ", list(list(list("save_plot")), list("directly save the plot [boolean]")), "\n", "    ", list(list(list("save_param")), list("list of saving parameters from ", list(list("all_plots_save_function")))), "\n", "    ", list(list(list("default_save_name")), list("default save name for saving, don't change, change save_name in save_param")), "\n", 
   "  ")

Seealso
=======

```plotICF`` <#ploticf>`__
