==================================
createGiottoXeniumObject_aggregate
==================================

:Date: 1/19/23

``createGiottoXeniumObject_aggregate``
======================================

Create a Xenium Giotto object from aggregate info

Description
-----------

Aggregate workflow for createGiottoXeniumObject

Usage
-----

.. code:: r

   createGiottoXeniumObject_aggregate(
     data_list,
     instructions = NULL,
     cores = NA,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``data_list``                 | list of data loaded by               |
|                               | ``load_xenium_folder``               |
+-------------------------------+--------------------------------------+
| ``instructions``              | list of instructions or output       |
|                               | result from                          |
|                               | ```createGiottoInstructi             |
|                               | ons`` <#creategiottoinstructions>`__ |
+-------------------------------+--------------------------------------+
| ``cores``                     | how many cores or threads to use to  |
|                               | read data if paths are provided      |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose when building Giotto      |
|                               | object                               |
+-------------------------------+--------------------------------------+

Seealso
-------

createGiottoXeniumObject createGiottoXeniumObject_subcellular
