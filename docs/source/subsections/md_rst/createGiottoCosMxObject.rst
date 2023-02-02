Create Nanostring CosMx Giotto Object
-------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto.R#L2960
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Given the path to a CosMx experiment directory, creates a Giotto object.

Usage
~~~~~

::

   createGiottoCosMxObject(
     cosmx_dir = NULL,
     data_to_use = c("all", "subcellular", "aggregate"),
     FOVs = NULL,
     instructions = NULL,
     cores = NA,
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``cosmx_dir``                     | full path to the exported cosmx   |
|                                   | directory                         |
+-----------------------------------+-----------------------------------+
| ``data_to_use``                   | which type(s) of expression data  |
|                                   | to build the gobject with Default |
|                                   | is ``'all'`` information          |
|                                   | available. ``'subcellular'``      |
|                                   | loads the transcript coordinates  |
|                                   | only. ``'aggregate'`` loads the   |
|                                   | provided aggregated expression    |
|                                   | matrix.                           |
+-----------------------------------+-----------------------------------+
| ``FOVs``                          | field of views to load (only      |
|                                   | affects subcellular data and      |
|                                   | images)                           |
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

Details
~~~~~~~

[**Expected Directory**] This function generates a giotto object when
given a link to a cosmx output directory. It expects the following items
within the directory where the **bolded** portions are what this
function matches against:

-  **CellComposite** (folder of images)

-  **CellLabels** (folder of images)

-  **CellOverlay** (folder of images)

-  **CompartmentLabels** (folder of images)

-  experimentname\_\ **exprMat_file**.csv (file)

-  experimentname\_\ **fov_positions_file**.csv (file)

-  experimentname\_\ **metadata_file**.csv (file)

-  experimentname\_\ **tx_file**.csv (file)

[**Workflows**] Workflow to use is accessed through the data_to_use
param

-  'all' - loads and requires subcellular information from tx_file and
   fov_positions_file and also the existing aggregated information
   (expression, spatial locations, and metadata) from exprMat_file and
   metadata_file.

-  'subcellular' - loads and requires subcellular information from
   tx_file and fov_positions_file only.

-  'aggregate' - loads and requires the existing aggregate information
   (expression, spatial locations, and metadata) from exprMat_file and
   metadata_file.

[**Images**] Images in the default CellComposite, CellLabels,
CompartmentLabels, and CellOverlay folders will be loaded as giotto
largeImage objects in all workflows as long as they are available.
Additionally, CellComposite images will be converted to giotto image
objects, making plotting with these image objects more responsive when
accessing them from a server. ``showGiottoImageNames`` can be used to
see the available images.

Value
~~~~~

a giotto object
