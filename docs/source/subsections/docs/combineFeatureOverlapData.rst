combineFeatureOverlapData
-------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2954
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

combine feature data information

Usage
~~~~~

::

   combineFeatureOverlapData(
     gobject,
     feat_type = "rna",
     sel_feats = NULL,
     poly_info = c("cell")
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``sel_feats``                     | selected features (default: NULL  |
|                                   | or no selection)                  |
+-----------------------------------+-----------------------------------+
| ``poly_info``                     | polygon information name          |
+-----------------------------------+-----------------------------------+

Value
~~~~~

data.table with combined spatial polygon information
