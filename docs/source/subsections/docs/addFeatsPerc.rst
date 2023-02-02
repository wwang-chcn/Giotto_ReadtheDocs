addFeatsPerc
------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3910
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Calculates the total percentage of (normalized) counts for a subset of
selected genes

Usage
~~~~~

::

   addFeatsPerc(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     feats = NULL,
     vector_name = "feat_perc",
     return_gobject = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use          |
+-----------------------------------+-----------------------------------+
| ``feats``                         | vector of selected features       |
+-----------------------------------+-----------------------------------+
| ``vector_name``                   | column name as seen in            |
|                                   | ``pDataDT``                       |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | boolean: return giotto object     |
|                                   | (default = TRUE)                  |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giotto object if ``return_gobject = TRUE``, else a vector with
