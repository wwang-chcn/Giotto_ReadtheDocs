Create a Xenium Giotto object from aggregate info
-------------------------------------------------

Description
~~~~~~~~~~~

Aggregate workflow for createGiottoXeniumObject

Usage
~~~~~

::

   createGiottoXeniumObject_aggregate(
     data_list,
     instructions = NULL,
     cores = NA,
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``data_list``                     | list of data loaded by            |
|                                   | ``load_xenium_folder``            |
+-----------------------------------+-----------------------------------+
| ``instructions``                  | list of instructions or output    |
|                                   | result from                       |
|                                   | ``createGiottoInstructions``      |
+-----------------------------------+-----------------------------------+
| ``cores``                         | how many cores or threads to use  |
|                                   | to read data if paths are         |
|                                   | provided                          |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose when building Giotto   |
|                                   | object                            |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

createGiottoXeniumObject createGiottoXeniumObject_subcellular
