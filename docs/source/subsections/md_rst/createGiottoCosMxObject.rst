=======================
createGiottoCosMxObject
=======================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L3086

.. role:: raw-latex(raw)
   :format: latex
..

Description
===========

Given the path to a CosMx experiment directory, creates a Giotto object.

Usage
=====

.. code:: r

   createGiottoCosMxObject(
     cosmx_dir = NULL,
     data_to_use = c("all", "subcellular", "aggregate"),
     FOVs = NULL,
     instructions = NULL,
     cores = NA,
     verbose = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``cosmx_dir``                 | full path to the exported cosmx      |
|                               | directory                            |
+-------------------------------+--------------------------------------+
| ``data_to_use``               | which type(s) of expression data to  |
|                               | build the gobject with Default is    |
|                               | ``'all'`` information available.     |
|                               | ``'subcellular'`` loads the          |
|                               | transcript coordinates only.         |
|                               | ``'aggregate'`` loads the provided   |
|                               | aggregated expression matrix.        |
+-------------------------------+--------------------------------------+
| ``FOVs``                      | field of views to load (only affects |
|                               | subcellular data and images)         |
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

Details
=======

[ Expected Directory ] This function generates a giotto object when
given a link to a cosmx output directory. It expects the following items
within the directory where the bolded portions are what this function
matches against:

-  list(list(â€œCellCompositeâ€), â€ (folder of images)â€œ)

-  list(list(â€œCellLabelsâ€), â€ (folder of images)â€œ)

-  list(list(â€œCellOverlayâ€), â€ (folder of images)â€œ)

-  list(list(â€œCompartmentLabelsâ€), â€ (folder of images)â€œ)

-  list(â€œexperimentname\_â€, list(â€œexprMat_fileâ€), â€œ.csv (file)â€)

-  list(â€œexperimentname\_â€, list(â€œfov_positions_fileâ€), â€œ.csv (file)â€)

-  list(â€œexperimentname\_â€, list(â€œmetadata_fileâ€), â€œ.csv (file)â€)

-  list(â€œexperimentname\_â€, list(â€œtx_fileâ€), â€œ.csv (file)â€)

[ Workflows ] Workflow to use is accessed through the data_to_use param

-  list(â€œâ€˜allâ€™ - loads and requires subcellular information from tx_file
   and fov_positions_file:raw-latex:`\n`â€, â€ and also the existing
   aggregated information (expression, spatial locations, and
   metadata):raw-latex:`\n`â€œ,â€ from exprMat_file and metadata_file.â€)

-  list(â€œâ€˜subcellularâ€™ - loads and requires subcellular information from
   tx_file and:raw-latex:`\n`â€, â€ fov_positions_file only.â€)

-  list(â€œâ€˜aggregateâ€™ - loads and requires the existing aggregate
   information (expression,:raw-latex:`\n`â€, â€ spatial locations, and
   metadata) from exprMat_file and metadata_file.â€)

[ Images ] Images in the default CellComposite, CellLabels,
CompartmentLabels, and CellOverlay folders will be loaded as giotto
largeImage objects in all workflows as long as they are available.
Additionally, CellComposite images will be converted to giotto image
objects, making plotting with these image objects more responsive when
accessing them from a server.
```showGiottoImageNames`` <#showgiottoimagenames>`__ can be used to see
the available images.

Value
=====

a giotto object
