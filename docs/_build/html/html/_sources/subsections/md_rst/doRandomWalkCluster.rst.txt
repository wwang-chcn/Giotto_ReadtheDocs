.. _doRandomWalkCluster:
``doRandomWalkCluster``
===========================

doRandomWalkCluster

Description
-----------

Cluster cells using a random walk approach.

Usage
-----

.. code-block:: r

   doRandomWalkCluster(
     gobject,
     name = "random_walk_clus",
     nn_network_to_use = "sNN",
     network_name = "sNN.pca",
     walk_steps = 4,
     walk_clusters = 10,
     walk_weights = NA,
     return_gobject = TRUE,
     set_seed = F,
     seed_number = 1234
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``name``
     - name for cluster
   * - ``nn_network_to_use``
     - type of NN network to use (kNN vs sNN)
   * - ``network_name``
     - name of NN network to use
   * - ``walk_steps``
     - number of walking steps
   * - ``walk_clusters``
     - number of final clusters
   * - ``walk_weights``
     - cluster column defining the walk weights
   * - ``return_gobject``
     - boolean: return giotto object (default = TRUE)
   * - ``set_seed``
     - set seed
   * - ``seed_number``
     - number for seed


Details
-------

See `\ ``cluster_walktrap`` <#clusterwalktrap>`_ function from the igraph
 package in R for more information.

Value
-----

giotto object with new clusters appended to cell metadata
