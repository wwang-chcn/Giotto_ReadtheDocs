.. _combineFeatureData:
``combineFeatureData``
==========================

combineFeatureData

Description
-----------

combine feature data information

Usage
-----

.. code-block:: r

   combineFeatureData(
     gobject,
     feat_type = NULL,
     spat_unit = NULL,
     sel_feats = NULL
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
   * - ``sel_feats``
     - selected features (default: NULL or no selection)


Value
-----

data.table with combined spatial feature information
