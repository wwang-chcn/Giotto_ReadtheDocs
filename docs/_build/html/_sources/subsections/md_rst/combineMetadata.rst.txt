
``combineMetadata``
=======================

combineMetadata

Description
-----------

This function combines the cell metadata with spatial locations and
 enrichment results from `\ ``runSpatialEnrich`` <#runspatialenrich>`_

Usage
-----

.. code-block:: r

   combineMetadata(gobject, spat_enr_names = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - Giotto object
   * - ``spat_enr_names``
     - names of spatial enrichment results to include


Value
-----

Extended cell metadata in data.table format.
