Adjust expression values
------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2597
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Adjust expression values to account for known batch effects or
technological covariates.

Usage
~~~~~

::

   adjustGiottoMatrix(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     batch_columns = NULL,
     covariate_columns = NULL,
     return_gobject = TRUE,
     update_slot = c("custom")
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
| ``batch_columns``                 | metadata columns that represent   |
|                                   | different batch (max = 2)         |
+-----------------------------------+-----------------------------------+
| ``covariate_columns``             | metadata columns that represent   |
|                                   | covariates to regress out         |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | boolean: return giotto object     |
|                                   | (default = TRUE)                  |
+-----------------------------------+-----------------------------------+
| ``update_slot``                   | expression slot that will be      |
|                                   | updated (default = custom)        |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

This function implements the ``removeBatchEffect`` function to remove
known batch effects and to adjust expression values according to
provided covariates.

Value
~~~~~

giotto object or exprObj
