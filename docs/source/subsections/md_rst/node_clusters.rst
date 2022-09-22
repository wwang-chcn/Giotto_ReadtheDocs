=============
node_clusters
=============

:Date: 2022-09-22

Description
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
