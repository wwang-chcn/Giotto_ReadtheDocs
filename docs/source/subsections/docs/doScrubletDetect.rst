doScrubletDetect
----------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/python_scrublet.R#L18
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

run scrublet doublet detection for raw expression.

Usage
~~~~~

::

   doScrubletDetect(
     gobject,
     feat_type = NULL,
     spat_unit = "cell",
     expression_values = "raw",
     expected_doublet_rate = 0.06,
     min_counts = 1,
     min_cells = 1,
     min_gene_variability_pctl = 85,
     n_prin_comps = 30,
     return_gobject = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object containing          |
|                                   | expression data                   |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use          |
+-----------------------------------+-----------------------------------+
| ``expected_doublet_rate``         | expected transcriptomes that are  |
|                                   | doublets. 0.06 is from 10x        |
|                                   | Chromium guide.                   |
+-----------------------------------+-----------------------------------+
| ``min_counts``                    | scrublet internal data filtering, |
|                                   | min counts found to be considered |
|                                   | a cell                            |
+-----------------------------------+-----------------------------------+
| ``min_cells``                     | scrublet internal data filtering. |
|                                   | min cells expressed to be         |
|                                   | considered a feat                 |
+-----------------------------------+-----------------------------------+
| ``min_gene_variability_pctl``     | scrublet internal PCA generation. |
|                                   | highly variable gene percentile   |
|                                   | cutoff                            |
+-----------------------------------+-----------------------------------+
| ``n_prin_comps``                  | number of PCs to use in PCA for   |
|                                   | detection                         |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | return as gobject if TRUE,        |
|                                   | data.frame with cell_ID if FALSE  |
+-----------------------------------+-----------------------------------+

Value
~~~~~

list including doublet scores and classifications

See Also
~~~~~~~~

This function wraps the python package scrublet
`doi:10.1016/j.cels.2018.11.005 <https://doi.org/10.1016/j.cels.2018.11.005>`__
