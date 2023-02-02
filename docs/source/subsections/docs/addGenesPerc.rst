addGenesPerc
------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3981
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

calculates the total percentage of (normalized) counts for a subset of
selected genes

Usage
~~~~~

::

   addGenesPerc(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     genes = NULL,
     vector_name = "gene_perc",
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
| ``genes``                         | vector of selected genes          |
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
