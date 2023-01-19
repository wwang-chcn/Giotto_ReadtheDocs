===============
spatIDs-generic
===============

:Date: 1/19/23

``spatIDs-generic``
===================

Cell and feature names

Description
-----------

Get the cells and feature names of a giotto object or subobject

Usage
-----

.. code:: r

   spatIDs(x, spat_unit, ...)
   featIDs(x, feat_type, ...)
   ## Default S4 method for signatures:
   ## 'giotto', 'exprObj', 'spatLocsObj', 'cellMetaObj', 'spatialNetworkObj' 'dimObj'

Arguments
---------

============= =====================================
Argument      Description
============= =====================================
``x``         an object
``spat_unit`` (optional) specify which spatial unit
``...``       additional parameters to pass
``feat_type`` (optional) specify which feature type
============= =====================================
