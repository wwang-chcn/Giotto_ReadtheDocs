Create giotto points object
---------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1206
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Creates Giotto point object from a structured dataframe-like object

Usage
~~~~~

::

   createGiottoPoints(x, feat_type = "rna", verbose = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``x``                             | spatVector or data.frame-like     |
|                                   | object with points coordinate     |
|                                   | information (x, y, feat_ID)       |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

giottoPoints
