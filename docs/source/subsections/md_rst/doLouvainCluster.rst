================
doLouvainCluster
================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/clustering.R#L462



====================

doLouvainCluster

Description
-----------

cluster cells using a NN-network and the Louvain algorithm.

Usage
-----

.. code:: r

   doLouvainCluster(
     gobject,
     version = c("community", "multinet"),
     name = "louvain_clus",
     nn_network_to_use = "sNN",
     network_name = "sNN.pca",
     python_path = NULL,
     resolution = 1,
     weight_col = NULL,
     gamma = 1,
     omega = 1,
     louv_random = FALSE,
     return_gobject = TRUE,
     set_seed = FALSE,
     seed_number = 1234,
     ...
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``version``                   | implemented version of Louvain       |
|                               | clustering to use                    |
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
| ``python_path``               | [community] specify specific path to |
|                               | python if required                   |
+-------------------------------+--------------------------------------+
| ``resolution``                | [community] resolution, default = 1  |
+-------------------------------+--------------------------------------+
| ``weight_col``                | weight column name                   |
+-------------------------------+--------------------------------------+
| ``gamma``                     | [multinet] Resolution parameter for  |
|                               | modularity in the generalized        |
|                               | louvain method, default = 1          |
+-------------------------------+--------------------------------------+
| ``omega``                     | [multinet] Inter-layer weight        |
|                               | parameter in the generalized louvain |
|                               | method, default = 1                  |
+-------------------------------+--------------------------------------+
| ``louv_random``               | [community] Will randomize the node  |
|                               | evaluation order and the community   |
|                               | evaluation order to get different    |
|                               | partitions at each call (default =   |
|                               | FALSE)                               |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | boolean: return giotto object        |
|                               | (default = TRUE)                     |
+-------------------------------+--------------------------------------+
| ``set_seed``                  | set seed (default = FALSE)           |
+-------------------------------+--------------------------------------+
| ``seed_number``               | number for seed                      |
+-------------------------------+--------------------------------------+
| ``...``                       | arguments passed to                  |
|                               | ```doLouvainCluster_communi          |
|                               | ty`` <#dolouvainclustercommunity>`__ |
|                               | or                                   |
|                               | ```doLouvainCluster_multi            |
|                               | net`` <#dolouvainclustermultinet>`__ |
+-------------------------------+--------------------------------------+

Details
-------

Louvain clustering using the community or multinet implementation of the
louvain clustering algorithm.

Value
-----

giotto object with new clusters appended to cell metadata

Seealso
-------

```doLouvainCluster_community`` <#dolouvainclustercommunity>`__ and
```doLouvainCluster_multinet`` <#dolouvainclustermultinet>`__
