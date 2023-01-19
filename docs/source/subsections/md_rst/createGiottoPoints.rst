==================
createGiottoPoints
==================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1206



======================

Create giotto points object

Description
-----------

Creates Giotto point object from a structured dataframe-like object

Usage
-----

.. code:: r

   createGiottoPoints(x, feat_type = "rna", verbose = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``x``                         | spatVector or data.frame-like object |
|                               | with points coordinate information   |
|                               | (x, y, feat_ID)                      |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Value
-----

giottoPoints
