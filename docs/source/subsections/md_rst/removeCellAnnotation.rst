Remove cell annotation
----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L3283
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Removes cell annotation from a Giotto object for a specific feature
modality (default = 'rna')

Usage
~~~~~

::

   removeCellAnnotation(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     columns = NULL,
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
| ``columns``                       | names of columns to remove        |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | boolean: return giotto object     |
|                                   | (default = TRUE)                  |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

if ``return_gobject = FALSE``, it will return the cell metadata

Value
~~~~~

giotto object
