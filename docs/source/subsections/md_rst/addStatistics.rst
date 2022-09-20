=============
addStatistics
=============

:Date: 2022-09-20

``addStatistics``
=================

addStatistics

Description
-----------

Adds feature and cell statistics to the giotto object

Usage
-----

.. code:: r

   addStatistics(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     detection_threshold = 0,
     return_gobject = TRUE
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
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``expression_values``         | expression values to use             |
+-------------------------------+--------------------------------------+
| ``detection_threshold``       | detection threshold to consider a    |
|                               | feature detected                     |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | boolean: return giotto object        |
|                               | (default = TRUE)                     |
+-------------------------------+--------------------------------------+

Details
-------

See ```addFeatStatistics`` <#addfeatstatistics>`__ and
```addCellStatistics`` <#addcellstatistics>`__

Value
-----

giotto object if return_gobject = TRUE, else a list with results
