=======================
createGiottoCosMxObject
=======================

:Date: ymd

.. role:: raw-latex(raw)
   :format: latex
..

``createGiottoCosMxObject``
===========================

Create Nanostring CosMx Giotto Object

Description
-----------

Given the path to a CosMx experiment directory, creates a Giotto object.

Usage
-----

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
---------

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
-------

[ Expected Directory ] This function generates a giotto object when
given a link to a cosmx output directory. It expects the following items
within the directory where the bolded portions are what this function
matches against:

-  list(list(“CellComposite”), ” (folder of images)“)

-  list(list(“CellLabels”), ” (folder of images)“)

-  list(list(“CellOverlay”), ” (folder of images)“)

-  list(list(“CompartmentLabels”), ” (folder of images)“)

-  list(“experimentname\_”, list(“exprMat_file”), “.csv (file)”)

-  list(“experimentname\_”, list(“fov_positions_file”), “.csv (file)”)

-  list(“experimentname\_”, list(“metadata_file”), “.csv (file)”)

-  list(“experimentname\_”, list(“tx_file”), “.csv (file)”)

[ Workflows ] Workflow to use is accessed through the data_to_use param

-  list(“‘all’ - loads and requires subcellular information from tx_file
   and fov_positions_file:raw-latex:`\n`”, ” and also the existing
   aggregated information (expression, spatial locations, and
   metadata):raw-latex:`\n`“,” from exprMat_file and metadata_file.”)

-  list(“‘subcellular’ - loads and requires subcellular information from
   tx_file and:raw-latex:`\n`”, ” fov_positions_file only.”)

-  list(“‘aggregate’ - loads and requires the existing aggregate
   information (expression,:raw-latex:`\n`”, ” spatial locations, and
   metadata) from exprMat_file and metadata_file.”)

[ Images ] Images in the default CellComposite, CellLabels,
CompartmentLabels, and CellOverlay folders will be loaded as giotto
largeImage objects in all workflows as long as they are available.
Additionally, CellComposite images will be converted to giotto image
objects, making plotting with these image objects more responsive when
accessing them from a server.
```showGiottoImageNames`` <#showgiottoimagenames>`__ can be used to see
the available images.

Value
-----

a giotto object
