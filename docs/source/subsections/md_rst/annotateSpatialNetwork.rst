
``annotateSpatialNetwork``
==============================

annotateSpatialNetwork

Description
-----------

Annotate spatial network with cell metadata information.

Usage
-----

.. code-block:: r

   annotateSpatialNetwork(
     gobject,
     spatial_network_name = "Delaunay_network",
     cluster_column,
     create_full_network = F
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``spatial_network_name``
     - name of spatial network to use
   * - ``cluster_column``
     - name of column to use for clusters
   * - ``create_full_network``
     - convert from reduced to full network representation


Value
-----

annotated network in data.table format
