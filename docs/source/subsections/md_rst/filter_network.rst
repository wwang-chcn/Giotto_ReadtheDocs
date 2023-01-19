==============
filter_network
==============

:Date: 1/19/23

``filter_network``
==================

filter_network

Description
-----------

function to filter a spatial network

Usage
-----

.. code:: r

   filter_network(networkDT = NULL, maximum_distance = NULL, minimum_k = NULL)

Arguments
---------

==================== =======================================
Argument             Description
==================== =======================================
``networkDT``        spatial network in data.table format
``maximum_distance`` maximum distance between cell centroids
``minimum_k``        minimum number of neighbors
==================== =======================================
