Compare gene expression between polygon areas
---------------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/interactivity.R#L299
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Compare gene expression between polygon areas

Usage
~~~~~

::

   comparePolygonExpression(
     gobject,
     polygon_name = "selections",
     spat_unit = "cell",
     feat_type = "rna",
     selected_feats = "top_genes",
     expression_values = "normalized",
     method = "scran",
     ...
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | A Giotto object                   |
+-----------------------------------+-----------------------------------+
| ``polygon_name``                  | name of polygon selections        |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+
| ``selected_feats``                | vector of selected features to    |
|                                   | plot                              |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | gene expression values to use     |
|                                   | ("normalized", "scaled",          |
|                                   | "custom")                         |
+-----------------------------------+-----------------------------------+
| ``method``                        | method to use to detect           |
|                                   | differentially expressed feats    |
|                                   | ("scran", "gini", "mast")         |
+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed to Heatmap       |
+-----------------------------------+-----------------------------------+

Value
~~~~~

A ComplexHeatmap::Heatmap object
