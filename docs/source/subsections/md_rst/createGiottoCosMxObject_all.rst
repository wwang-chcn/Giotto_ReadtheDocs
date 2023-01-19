===========================
createGiottoCosMxObject_all
===========================

:Date: 1/19/23

``createGiottoCosMxObject_all``
===============================

Load and create a CosMx Giotto object from subcellular and aggregate
info

Description
-----------

Load and create a CosMx Giotto object from subcellular and aggregate
info

Usage
-----

.. code:: r

   createGiottoCosMxObject_all(
     dir_items,
     FOVs,
     cores,
     verbose = TRUE,
     instructions = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``dir_items``                 | list of full directory paths from    |
|                               | ``read_cosmx_folder``                |
+-------------------------------+--------------------------------------+
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

Details
-------

Both subcellular (subellular transcript detection information) and
aggregate (aggregated detection count matrices by cell polygon from
NanoString) data will be loaded in. The two will be separated into
‘cell’ and ‘cell_agg’ spatial units in order to denote the difference in
origin of the two.

Seealso
-------

createGiottoCosMxObject createGiottoCosMxObject_aggregate
createGiottoCosMxObject_subcellular
