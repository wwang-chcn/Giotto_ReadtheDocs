
``findNetworkNeighbors``
============================

findNetworkNeighbors

Description
-----------

Find the spatial neighbors for a selected group of cells within the selected spatial network.

Usage
-----

.. code-block:: r

   findNetworkNeighbors(
     gobject,
     spatial_network_name,
     source_cell_ids = NULL,
     name = "nb_cells"
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - Giotto object
   * - ``spatial_network_name``
     - name of spatial network
   * - ``source_cell_ids``
     - cell ids for which you want to know the spatial neighbors
   * - ``name``
     - name of the results


Value
-----

data.table

Examples
--------

.. code-block:: r

   data(mini_giotto_single_cell)

   # get all cells
   all_cells = slot(mini_giotto_single_cell, 'cell_ID')

   # find all the spatial neighbours for the first 5 cells
   # within the Delaunay network
   findNetworkNeighbors(mini_giotto_single_cell,
   spatial_network_name = 'Delaunay_network',
   source_cell_ids = all_cells[1:5])
