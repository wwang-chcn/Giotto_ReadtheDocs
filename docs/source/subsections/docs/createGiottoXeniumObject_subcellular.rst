Create a Xenium Giotto object from subcellular info
---------------------------------------------------

Description
~~~~~~~~~~~

Subcellular workflow for createGiottoXeniumObject

Usage
~~~~~

::

   createGiottoXeniumObject_subcellular(
     data_list,
     key_list = NULL,
     qv_threshold = 20,
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
| ``key_list``                      | regex-based search keys for       |
|                                   | feature IDs to allow separation   |
|                                   | into separate giottoPoints        |
|                                   | objects by feat_type              |
+-----------------------------------+-----------------------------------+
| ``qv_threshold``                  | Minimum Phred-scaled quality      |
|                                   | score cutoff to be included as a  |
|                                   | subcellular transcript detection  |
|                                   | (default = 20)                    |
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

createGiottoXeniumObject createGiottoXeniumObject_aggregate
