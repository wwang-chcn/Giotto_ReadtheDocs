============
dims-generic
============

:Date: 1/19/23

``dims-generic``
================

Dimensions of giotto objects

Description
-----------

Find the dimensions of an object

Usage
-----

.. code:: r

   list(list("nrow"), list("giottoPoints"))(x)
   list(list("nrow"), list("giottoPolygon"))(x)
   list(list("nrow"), list("coordDataDT"))(x)
   list(list("nrow"), list("exprData"))(x)
   list(list("nrow"), list("metaData"))(x)
   list(list("ncol"), list("exprData"))(x)
   list(list("ncol"), list("metaData"))(x)
   list(list("dim"), list("exprData"))(x)
   list(list("dim"), list("metaData"))(x)

Arguments
---------

======== =============================
Argument Description
======== =============================
``x``    object to check dimensions of
======== =============================
