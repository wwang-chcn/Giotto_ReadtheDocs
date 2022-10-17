========================
comparePolygonExpression
========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/spatial_visuals.R#L10235

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
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``selected_feats``            | vector of selected features to plot  |
+-------------------------------+--------------------------------------+
| ``expression_values``         | gene expression values to use        |
|                               | (â€œnormalizedâ€, â€œscaledâ€, â€œcustomâ€)   |
+-------------------------------+--------------------------------------+
| ``method``                    | method to use to detect              |
|                               | differentially expressed feats       |
|                               | (â€œscranâ€, â€œginiâ€, â€œmastâ€)            |
+-------------------------------+--------------------------------------+
| ``list()``                    | Arguments passed to                  |
|                               | `Heatmap <#heatmap>`__               |
+-------------------------------+--------------------------------------+

Value
=====

A ComplexHeatmap::Heatmap object
