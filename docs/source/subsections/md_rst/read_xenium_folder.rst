==================
read_xenium_folder
==================

:Date: 1/19/23

``read_xenium_folder``
======================

Read a structured xenium folder

Description
-----------

Read a structured xenium folder

Usage
-----

.. code:: r

   read_xenium_folder(
     xenium_dir,
     data_to_use = "subcellular",
     bounds_to_load = c("cell"),
     load_format = "csv",
     h5_expression = FALSE,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``xenium_dir``                | full path to the exported xenium     |
|                               | directory                            |
+-------------------------------+--------------------------------------+
| ``data_to_use``               | which type(s) of expression data to  |
|                               | build the gobject with               |
|                               | (e.g. default: ‘subcellular’ ,       |
|                               | ‘aggregate’, or ‘all’)               |
+-------------------------------+--------------------------------------+
| ``bounds_to_load``            | vector of boundary information to    |
|                               | load (e.g. ``'cell'`` or             |
|                               | ``'nucleus'`` by themselves or       |
|                               | ``c('cell', 'nucleus')`` to load     |
|                               | both at the same time.)              |
+-------------------------------+--------------------------------------+
| ``load_format``               | files formats from which to load the |
|                               | data. Either ``csv`` or ``parquet``  |
|                               | currently supported.                 |
+-------------------------------+--------------------------------------+
| ``h5_expression``             | (boolean) whether to load            |
|                               | cell_feature_matrix from .h5 file.   |
|                               | Default is ``TRUE``                  |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose when building Giotto      |
|                               | object                               |
+-------------------------------+--------------------------------------+

Value
-----

path_list a list of xenium files discovered and their filepaths. NULL
values denote missing items
