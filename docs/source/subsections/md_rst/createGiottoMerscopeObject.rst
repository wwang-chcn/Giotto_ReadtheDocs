==========================
createGiottoMerscopeObject
==========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/convenience.R#L149

==============================

Create Vizgen MERSCOPE Giotto Object

Description
-----------

Given the path to a MERSCOPE experiment directory, creates a Giotto
object.

Usage
-----

.. code:: r

   createGiottoMerscopeObject(
     merscope_dir,
     data_to_use = c("subcellular", "aggregate"),
     FOVs = NULL,
     calculate_overlap = TRUE,
     overlap_to_matrix = TRUE,
     aggregate_stack = TRUE,
     aggregate_stack_param = list(summarize_expression = "sum", summarize_locations =
       "mean", new_spat_unit = "cell"),
     instructions = NULL,
     cores = NA,
     verbose = TRUE
   )
   createGiottoMerscopeObject_subcellular(
     data_list,
     calculate_overlap = TRUE,
     overlap_to_matrix = TRUE,
     aggregate_stack = TRUE,
     aggregate_stack_param = list(summarize_expression = "sum", summarize_locations =
       "mean", new_spat_unit = "cell"),
     cores = NA,
     verbose = TRUE
   )
   createGiottoMerscopeObject_aggregate(data_list, cores = NA, verbose = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``merscope_dir``              | full path to the exported merscope   |
|                               | directory                            |
+-------------------------------+--------------------------------------+
| ``data_to_use``               | which of either the â€˜subcellularâ€™ or |
|                               | â€˜aggregateâ€™ information to use for   |
|                               | object creation                      |
+-------------------------------+--------------------------------------+
| ``FOVs``                      | which FOVs to use when building the  |
|                               | subcellular object. (default is      |
|                               | NULL) NULL loads all FOVs (very      |
|                               | slow)                                |
+-------------------------------+--------------------------------------+
| ``calculate_overlap``         | whether to run                       |
|                               | ```calculateOverlapR                 |
|                               | aster`` <#calculateoverlapraster>`__ |
+-------------------------------+--------------------------------------+
| ``overlap_to_matrix``         | whether to run                       |
|                               | ```ove                               |
|                               | rlapToMatrix`` <#overlaptomatrix>`__ |
+-------------------------------+--------------------------------------+
| ``aggregate_stack``           | whether to run                       |
|                               | ```agg                               |
|                               | regateStacks`` <#aggregatestacks>`__ |
+-------------------------------+--------------------------------------+
| ``aggregate_stack_param``     | params to pass to                    |
|                               | ```agg                               |
|                               | regateStacks`` <#aggregatestacks>`__ |
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
| ``data_list``                 | list of loaded data from             |
|                               | ```load_mersco                       |
|                               | pe_folder`` <#loadmerscopefolder>`__ |
+-------------------------------+--------------------------------------+

Details
-------

[ Expected Directory ] This function generates a giotto object when
given a link to a MERSCOPE output directory. It expects the following
items within the directory where the bolded portions are what this
function matches against:

-  list(list(â€œcell_boundariesâ€), â€ (folder .hdf5 files)â€œ)

-  list(list(â€œimagesâ€), â€ (folder of .tif images and a
   scalefactor/transfrom table)â€œ)

-  list(list(â€œcell_by_geneâ€), â€œ.csv (file)â€)

-  list(â€œcell_metadataâ€, list(â€œfov_positions_fileâ€), â€œ.csv (file)â€)

-  list(â€œdetected_transcriptsâ€, list(â€œmetadata_fileâ€), â€œ.csv (file)â€)

Value
-----

a giotto object
