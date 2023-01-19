=========================
combineFeatureOverlapData
=========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2954



=============================

combineFeatureOverlapData

Description
-----------

combine feature data information

Usage
-----

.. code:: r

   combineFeatureOverlapData(
     gobject,
     feat_type = "rna",
     sel_feats = NULL,
     poly_info = c("cell")
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``sel_feats``                 | selected features (default: NULL or  |
|                               | no selection)                        |
+-------------------------------+--------------------------------------+
| ``poly_info``                 | polygon information name             |
+-------------------------------+--------------------------------------+

Value
-----

data.table with combined spatial polygon information
