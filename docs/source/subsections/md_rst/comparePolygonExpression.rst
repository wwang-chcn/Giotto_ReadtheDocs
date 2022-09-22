========================
comparePolygonExpression
========================

:Date: 2022-09-22

Description
===========

Compare gene expression between polygon areas

Usage
=====

.. code:: r

   comparePolygonExpression(
     gobject,
     spat_unit = "cell",
     feat_type = "rna",
     selected_feats = "top_genes",
     expression_values = "normalized",
     method = "scran",
     ...
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A Giotto object                      |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g. “cell”)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g. “rna”, “dna”,     |
|                               | “protein”)                           |
+-------------------------------+--------------------------------------+
| ``selected_feats``            | vector of selected features to plot  |
+-------------------------------+--------------------------------------+
| ``expression_values``         | gene expression values to use        |
|                               | (“normalized”, “scaled”, “custom”)   |
+-------------------------------+--------------------------------------+
| ``method``                    | method to use to detect              |
|                               | differentially expressed feats       |
|                               | (“scran”, “gini”, “mast”)            |
+-------------------------------+--------------------------------------+
| ``list()``                    | Arguments passed to                  |
|                               | `Heatmap <#heatmap>`__               |
+-------------------------------+--------------------------------------+

Value
=====

A ComplexHeatmap::Heatmap object
