.. _combineFeatureOverlapData:
``combineFeatureOverlapData``
=================================

combineFeatureOverlapData

Description
-----------

combine feature data information

Usage
-----

.. code-block:: r

   combineFeatureOverlapData(
     gobject,
     feat_type = "rna",
     sel_feats = NULL,
     poly_info = c("cell")
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
   * - ``sel_feats``
     - selected features (default: NULL or no selection)
   * - ``poly_info``
     - polygon information name


Value
-----

data.table with combined spatial polygon information
