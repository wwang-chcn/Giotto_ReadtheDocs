=================
runIntegratedUMAP
=================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/wnn.R#L463

===========

Run integrated UMAP

Usage
=====

.. code:: r

   runIntegratedUMAP(gobject, k = 20, spread = 5, min_dist = 0.01, ...)

Arguments
=========

============ ==========================
Argument     Description
============ ==========================
``gobject``  A giotto object
``k``        k number
``spread``   UMAP param: spread
``min_dist`` UMAP param: min_dist
``...``      additional UMAP parameters
============ ==========================

Value
=====

A Giotto object with integrated UMAP
