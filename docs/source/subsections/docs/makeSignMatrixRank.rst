makeSignMatrixRank
------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_enrichment.R#L181
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to convert a single-cell count matrix and a corresponding
single-cell cluster vector into a rank matrix that can be used with the
Rank enrichment option.

Usage
~~~~~

::

   makeSignMatrixRank(
     sc_matrix,
     sc_cluster_ids,
     ties_method = c("random", "max"),
     gobject = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``sc_matrix``                     | matrix of single-cell RNAseq      |
|                                   | expression data                   |
+-----------------------------------+-----------------------------------+
| ``sc_cluster_ids``                | vector of cluster ids             |
+-----------------------------------+-----------------------------------+
| ``ties_method``                   | how to handle rank ties           |
+-----------------------------------+-----------------------------------+
| ``gobject``                       | if giotto object is given then    |
|                                   | only genes present in both        |
|                                   | datasets will be considered       |
+-----------------------------------+-----------------------------------+

Value
~~~~~

matrix

See Also
~~~~~~~~

``rankEnrich``
