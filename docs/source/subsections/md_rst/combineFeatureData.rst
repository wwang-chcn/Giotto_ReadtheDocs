combineFeatureData
------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L2885
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

   combineFeatureData(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     sel_feats = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``sel_feats``                     | selected features (default: NULL  |
|                                   | or no selection)                  |
+-----------------------------------+-----------------------------------+

Value
~~~~~

data.table with combined spatial feature information
