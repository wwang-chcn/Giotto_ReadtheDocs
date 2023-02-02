Load and create a CosMx Giotto object from subcellular info
-----------------------------------------------------------

Description
~~~~~~~~~~~

Load and create a CosMx Giotto object from subcellular info

Usage
~~~~~

::

   createGiottoCosMxObject_subcellular(
     dir_items,
     FOVs = NULL,
     cores,
     verbose = TRUE,
     instructions = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``FOVs``                          | field of views to load (only      |
|                                   | affects subcellular data and      |
|                                   | images)                           |
+-----------------------------------+-----------------------------------+
| ``cores``                         | how many cores or threads to use  |
|                                   | to read data if paths are         |
|                                   | provided                          |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose when building Giotto   |
|                                   | object                            |
+-----------------------------------+-----------------------------------+
| ``instructions``                  | list of instructions or output    |
|                                   | result from                       |
|                                   | ``createGiottoInstructions``      |
+-----------------------------------+-----------------------------------+
