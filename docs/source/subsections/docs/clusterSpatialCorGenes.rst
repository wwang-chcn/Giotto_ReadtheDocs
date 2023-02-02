clusterSpatialCorGenes
----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/spatial_genes.R#L3658
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Cluster based on spatially correlated genes

Usage
~~~~~

::

   clusterSpatialCorGenes(
     spatCorObject,
     name = "spat_clus",
     hclust_method = "ward.D",
     k = 10,
     return_obj = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``spatCorObject``                 | spatial correlation object        |
+-----------------------------------+-----------------------------------+
| ``name``                          | name for spatial clustering       |
|                                   | results                           |
+-----------------------------------+-----------------------------------+
| ``hclust_method``                 | method for hierarchical           |
|                                   | clustering                        |
+-----------------------------------+-----------------------------------+
| ``k``                             | number of clusters to extract     |
+-----------------------------------+-----------------------------------+
| ``return_obj``                    | return spatial correlation object |
|                                   | (spatCorObject)                   |
+-----------------------------------+-----------------------------------+

Value
~~~~~

spatCorObject or cluster results
