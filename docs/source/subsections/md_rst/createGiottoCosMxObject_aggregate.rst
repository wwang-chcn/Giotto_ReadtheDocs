=================================
createGiottoCosMxObject_aggregate
=================================

:Date: 1/19/23

``createGiottoCosMxObject_aggregate``
=====================================

Load and create a CosMx Giotto object from aggregate info

Description
-----------

Load and create a CosMx Giotto object from aggregate info

Usage
-----

.. code:: r

   createGiottoCosMxObject_aggregate(
     dir_items,
     cores,
     verbose = TRUE,
     instructions = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``cores``                     | how many cores or threads to use to  |
|                               | read data if paths are provided      |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose when building Giotto      |
|                               | object                               |
+-------------------------------+--------------------------------------+
| ``instructions``              | list of instructions or output       |
|                               | result from                          |
|                               | ```createGiottoInstructi             |
|                               | ons`` <#creategiottoinstructions>`__ |
+-------------------------------+--------------------------------------+
