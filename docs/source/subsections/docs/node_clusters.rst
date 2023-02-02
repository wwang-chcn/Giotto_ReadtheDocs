node_clusters
-------------

Description
~~~~~~~~~~~

Merge selected clusters based on pairwise correlation scores and size of
cluster.

Usage
~~~~~

::

   node_clusters(hclus_obj, verbose = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``hclus_obj``                     | hclus object                      |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

list of splitted dendrogram nodes from high to low node height
