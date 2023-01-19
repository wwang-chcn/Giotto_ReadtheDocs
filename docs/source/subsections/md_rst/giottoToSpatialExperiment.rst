=========================
giottoToSpatialExperiment
=========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/interoperability.R#L620



=============================

Utility function to convert a Giotto object to a SpatialExperiment
object.

Description
-----------

Utility function to convert a Giotto object to a SpatialExperiment
object.

Usage
-----

.. code:: r

   giottoToSpatialExperiment(giottoObj, verbose = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``giottoObj``                 | Input Giotto object to convert to a  |
|                               | SpatialExperiment object.            |
+-------------------------------+--------------------------------------+
| ``verbose``                   | A boolean value specifying if        |
|                               | progress messages should be          |
|                               | displayed or not. Default ``TRUE`` . |
+-------------------------------+--------------------------------------+

Value
-----

A SpatialExperiment object that contains data from the input Giotto
object.

Examples
--------

.. code:: r

   mini_gobject <- GiottoData::loadGiottoMini('vizgen')
   giottoToSpatialExperiment(mini_gobject)
