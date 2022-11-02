=============
node_clusters
=============

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/clustering.R#L2396

===========

Merge selected clusters based on pairwise correlation scores and size of
cluster.

Usage
=====

.. code:: r

   node_clusters(hclus_obj, verbose = TRUE)

Arguments
=========

============= ============
Argument      Description
============= ============
``hclus_obj`` hclus object
``verbose``   be verbose
============= ============

Value
=====

list of splitted dendrogram nodes from high to low node height
