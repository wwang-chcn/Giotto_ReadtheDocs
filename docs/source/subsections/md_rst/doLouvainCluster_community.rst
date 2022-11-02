==========================
doLouvainCluster_community
==========================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/clustering.R#L203

===========

cluster cells using a NN-network and the Louvain algorithm from the
community module in Python

Usage
=====

.. code:: r

   doLouvainCluster_community(
     gobject,
     name = "louvain_clus",
     nn_network_to_use = "sNN",
     network_name = "sNN.pca",
     python_path = NULL,
     resolution = 1,
     weight_col = NULL,
     louv_random = FALSE,
     return_gobject = TRUE,
     set_seed = FALSE,
     seed_number = 1234
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``name``                      | name for cluster, default to         |
|                               | â€œlouvain_clusâ€                       |
+-------------------------------+--------------------------------------+
| ``nn_network_to_use``         | type of NN network to use (kNN vs    |
|                               | sNN), default to â€œsNNâ€               |
+-------------------------------+--------------------------------------+
| ``network_name``              | name of NN network to use, default   |
|                               | to â€œsNN.pcaâ€                         |
+-------------------------------+--------------------------------------+
| ``python_path``               | specify specific path to python if   |
|                               | required                             |
+-------------------------------+--------------------------------------+
| ``resolution``                | resolution, default = 1              |
+-------------------------------+--------------------------------------+
| ``weight_col``                | weight column to use for edges       |
+-------------------------------+--------------------------------------+
| ``louv_random``               | Will randomize the node evaluation   |
|                               | order and the community evaluation   |
|                               | order to get different partitions at |
|                               | each call (default = FALSE)          |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | boolean: return giotto object        |
|                               | (default = TRUE)                     |
+-------------------------------+--------------------------------------+
| ``set_seed``                  | set seed (default = FALSE)           |
+-------------------------------+--------------------------------------+
| ``seed_number``               | number for seed                      |
+-------------------------------+--------------------------------------+

Details
=======

This function is a wrapper for the Louvain algorithm implemented in
Python, which can detect communities in graphs of nodes (cells). See the
https://python-louvain.readthedocs.io/en/latest/index.html readthedocs
page for more information.

Set weight_col = NULL to give equal weight (=1) to each edge.

Value
=====

giotto object with new clusters appended to cell metadata
