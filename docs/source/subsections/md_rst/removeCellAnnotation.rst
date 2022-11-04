====================
removeCellAnnotation
====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/auxiliary_giotto.R#L2535


Description
===========

Removes cell annotation from a Giotto object for a specific feature
modality (default = ‘rna’)

Usage
=====

.. code:: r

   removeCellAnnotation(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     columns = NULL,
     return_gobject = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``columns``                   | names of columns to remove           |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | boolean: return giotto object        |
|                               | (default = TRUE)                     |
+-------------------------------+--------------------------------------+

Details
=======

if ``return_gobject = FALSE`` , it will return the cell metadata

Value
=====

giotto object
