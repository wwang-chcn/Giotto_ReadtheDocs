=======================
split_dendrogram_in_two
=======================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/clustering.R#L2366

===========

Merge selected clusters based on pairwise correlation scores and size of
cluster.

Usage
=====

.. code:: r

   split_dendrogram_in_two(dend)

Arguments
=========

======== =================
Argument Description
======== =================
``dend`` dendrogram object
======== =================

Value
=====

list of two dendrograms and height of node
