==================
combineFeatureData
==================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2690


Description
===========

combine feature data information

Usage
=====

.. code:: r

   combineFeatureData(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     sel_feats = NULL
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``sel_feats``                 | selected features (default: NULL or  |
|                               | no selection)                        |
+-------------------------------+--------------------------------------+

Value
=====

data.table with combined spatial feature information
