
``calculateMetaTableCells``
===============================

calculateMetaTableCells

Description
-----------

calculates the average metadata values for one or more (combined) annotation columns.

Usage
-----

.. code-block:: r

   calculateMetaTableCells(
     gobject,
     value_cols = NULL,
     metadata_cols = NULL,
     spat_enr_names = NULL
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``value_cols``
     - metadata or enrichment value columns to use
   * - ``metadata_cols``
     - annotation columns found in pDataDT(gobject)
   * - ``spat_enr_names``
     - which spatial enrichment results to include


Value
-----

data.table with average metadata values per (combined) annotation
