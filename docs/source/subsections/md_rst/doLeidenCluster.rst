===============
doLeidenCluster
===============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/clustering.R#L42



   :format: latex
..

``doLeidenCluster``
===================

doLeidenCluster

Description
-----------

cluster cells using a NN-network and the Leiden community detection
algorithm

Usage
-----

.. code:: r

   doLeidenCluster(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = "leiden_clus",
     nn_network_to_use = "sNN",
     network_name = "sNN.pca",
     python_path = NULL,
     resolution = 1,
     weight_col = "weight",
     partition_type = c("RBConfigurationVertexPartition", "ModularityVertexPartition"),
     init_membership = NULL,
     n_iterations = 1000,
     return_gobject = TRUE,
     set_seed = TRUE,
     seed_number = 1234
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit (e.g.Â â€œcellâ€)           |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type (e.g.Â â€œrnaâ€, â€œdnaâ€,     |
|                               | â€œproteinâ€)                           |
+-------------------------------+--------------------------------------+
| ``name``                      | name for cluster, default to         |
|                               | â€œleiden_clusâ€                        |
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
| ``weight_col``                | weight column to use for edges,      |
|                               | default to â€œweightâ€                  |
+-------------------------------+--------------------------------------+
| ``partition_type``            | The type of partition to use for     |
|                               | optimisation.                        |
|                               | (e.                                  |
|                               | g.Â â€œRBConfigurationVertexPartitionâ€, |
|                               | â€œModularityVertexPartitionâ€)         |
+-------------------------------+--------------------------------------+
| ``init_membership``           | initial membership of cells for the  |
|                               | partition                            |
+-------------------------------+--------------------------------------+
| ``n_iterations``              | number of interations to run the     |
|                               | Leiden algorithm. If the number of   |
|                               | iterations is negative, the Leiden   |
|                               | algorithm is run until an iteration  |
|                               | in which there was no improvement.   |
+-------------------------------+--------------------------------------+
| ``return_gobject``            | boolean: return giotto object        |
|                               | (default = TRUE)                     |
+-------------------------------+--------------------------------------+
| ``set_seed``                  | set seed                             |
+-------------------------------+--------------------------------------+
| ``seed_number``               | number for seed                      |
+-------------------------------+--------------------------------------+

Details
-------

This function is a wrapper for the Leiden algorithm implemented in
python, which can detect communities in graphs of millions of nodes
(cells), as long as they can fit in memory. See the
https://github.com/vtraag/leidenalg leidenalg github page or the
https://leidenalg.readthedocs.io/en/stable/index.html readthedocs page
for more information.

Partition types available and information:

-  list(â€œRBConfigurationVertexPartition:â€) list(â€œImplements Reichardt
   and Bornholdtï¿½\\200\\231s Potts model:raw-latex:`\n`â€, â€ with a
   configuration null model. This quality function is well-defined only
   for positive edge weights.:raw-latex:`\n`â€œ,â€ This quality function
   uses a linear resolution parameter.â€)

-  list(â€œModularityVertexPartition:â€) list(â€œImplements
   modularity.:raw-latex:`\n`â€, â€ This quality function is well-defined
   only for positive edge weights. It does â€œ, list(â€notâ€), â€ use the
   resolution parameterâ€)

Set weight_col = NULL to give equal weight (=1) to each edge.

Value
-----

giotto object with new clusters appended to cell metadata
