===================================
createGiottoCosMxObject_subcellular
===================================

:Date: 1/19/23

``createGiottoCosMxObject_subcellular``
=======================================

Load and create a CosMx Giotto object from subcellular info

Description
-----------

Load and create a CosMx Giotto object from subcellular info

Usage
-----

.. code:: r

   createGiottoCosMxObject_subcellular(
     dir_items,
     FOVs = NULL,
     cores,
     verbose = TRUE,
     instructions = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``FOVs``                      | field of views to load (only affects |
|                               | subcellular data and images)         |
+-------------------------------+--------------------------------------+
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
