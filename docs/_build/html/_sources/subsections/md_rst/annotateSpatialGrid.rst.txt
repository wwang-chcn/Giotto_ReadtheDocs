
``annotateSpatialGrid``
===========================

annotateSpatialGrid

Description
-----------

annotate spatial grid with cell ID and cell metadata (optional)

Usage
-----

.. code-block:: r

   annotateSpatialGrid(
     gobject,
     spatial_grid_name = "spatial_grid",
     cluster_columns = NULL
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - Giotto object
   * - ``spatial_grid_name``
     - name of spatial grid, see `\ ``showGrids`` <#showgrids>`_
   * - ``cluster_columns``
     - names of cell metadata, see `\ ``pDataDT`` <#pdatadt>`_


Value
-----

annotated spatial grid data.table
