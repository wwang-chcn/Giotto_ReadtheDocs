
``list_spatial_enrichments``
================================

list_spatial_enrichments

Description
-----------

return the available spatial enrichment results

Usage
-----

.. code-block:: r

   list_spatial_enrichments(gobject, spat_unit = NULL, feat_type = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``spat_unit``
     - spatial unit
   * - ``feat_type``
     - feature type


Value
-----

names and locations of available data as data.table
