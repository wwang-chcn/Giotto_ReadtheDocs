filter_network
--------------

Description
~~~~~~~~~~~

function to filter a spatial network

Usage
~~~~~

::

   filter_network(networkDT = NULL, maximum_distance = NULL, minimum_k = NULL)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``networkDT``                     | spatial network in data.table     |
|                                   | format                            |
+-----------------------------------+-----------------------------------+
| ``maximum_distance``              | maximum distance between cell     |
|                                   | centroids                         |
+-----------------------------------+-----------------------------------+
| ``minimum_k``                     | minimum number of neighbors       |
+-----------------------------------+-----------------------------------+
