============
filterGiotto
============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2036



================

filterGiotto

Description
-----------

filter Giotto object based on expression threshold

Usage
-----

.. code:: r

   filterGiotto(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("raw", "normalized", "scaled", "custom"),
     expression_threshold = 1,
     feat_det_in_min_cells = 100,
     gene_det_in_min_cells = NULL,
     min_det_feats_per_cell = 100,
     min_det_genes_per_cell = NULL,
     all_spat_units = TRUE,
     all_feat_types = TRUE,
     poly_info = "cell",
     tag_cells = FALSE,
     tag_cell_name = "tag",
     tag_feats = FALSE,
     tag_feats_name = "tag",
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``expression_values``         | expression values to use             |
+-------------------------------+--------------------------------------+
| ``expression_threshold``      | threshold to consider a gene         |
|                               | expressed                            |
+-------------------------------+--------------------------------------+
| ``feat_det_in_min_cells``     | minimum # of cells that need to      |
|                               | express a feature                    |
+-------------------------------+--------------------------------------+
| ``gene_det_in_min_cells``     | deprecated, use                      |
|                               | feat_det_in_min_cells                |
+-------------------------------+--------------------------------------+
| ``min_det_feats_per_cell``    | minimum # of features that need to   |
|                               | be detected in a cell                |
+-------------------------------+--------------------------------------+
| ``min_det_genes_per_cell``    | deprecated, use                      |
|                               | min_det_feats_per_cell               |
+-------------------------------+--------------------------------------+
| ``all_spat_units``            | apply features to remove filtering   |
|                               | results from current spatial         |
|                               | unit/feature type combination across |
|                               | ALL spatial units (default = TRUE)   |
+-------------------------------+--------------------------------------+
| ``all_feat_types``            | apply cells to remove filtering      |
|                               | results from current spatial         |
|                               | unit/feature type combination across |
|                               | ALL feature types (default = TRUE)   |
+-------------------------------+--------------------------------------+
| ``poly_info``                 | polygon information to use           |
+-------------------------------+--------------------------------------+
| ``tag_cells``                 | tag filtered cells in metadata       |
|                               | vs. remove cells                     |
+-------------------------------+--------------------------------------+
| ``tag_cell_name``             | column name for tagged cells in      |
|                               | metadata                             |
+-------------------------------+--------------------------------------+
| ``tag_feats``                 | tag features in metadata vs. remove  |
|                               | features                             |
+-------------------------------+--------------------------------------+
| ``tag_feats_name``            | column name for tagged features in   |
|                               | metadata                             |
+-------------------------------+--------------------------------------+
| ``verbose``                   | verbose                              |
+-------------------------------+--------------------------------------+

Details
-------

The function ```filterCombinations`` <#filtercombinations>`__ can be
used to explore the effect of different parameter values.

Value
-----

giotto object
