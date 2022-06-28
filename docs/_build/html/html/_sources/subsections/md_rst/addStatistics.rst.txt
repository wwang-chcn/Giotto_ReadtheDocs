.. _addStatistics:
``addStatistics``
=====================

addStatistics

Description
-----------

Adds feature and cell statistics to the giotto object

Usage
-----

.. code-block:: r

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

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``feat_type``
     - feature type
   * - ``spat_unit``
     - spatial unit
   * - ``expression_values``
     - expression values to use
   * - ``detection_threshold``
     - detection threshold to consider a feature detected
   * - ``return_gobject``
     - boolean: return giotto object (default = TRUE)


Details
-------

See `\ ``addFeatStatistics`` <#addfeatstatistics>`_ and `\ ``addCellStatistics`` <#addcellstatistics>`_

Value
-----

giotto object if return_gobject = TRUE, else a list with results
