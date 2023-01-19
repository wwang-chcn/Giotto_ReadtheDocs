================
read_data_folder
================

:Date: 1/19/23

.. role:: raw-latex(raw)
   :format: latex
..

``read_data_folder``
====================

Read a structured folder of exported data

Description
-----------

Read the exported folder of a spatial method and detect the presence of
needed files. NULL values denote missing items.

Usage
-----

.. code:: r

   read_data_folder(
     spat_method = NULL,
     data_dir = NULL,
     dir_items,
     data_to_use,
     load_format = NULL,
     require_data_DT,
     cores = NA,
     verbose = TRUE
   )
   read_merscope_folder(merscope_dir, data_to_use, cores = NA, verbose = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``spat_method``               | spatial method for which the data is |
|                               | being read                           |
+-------------------------------+--------------------------------------+
| ``data_dir``                  | exported data directory to read from |
+-------------------------------+--------------------------------------+
| ``dir_items``                 | named list of directory items to     |
|                               | expect and keywords to match         |
+-------------------------------+--------------------------------------+
| ``data_to_use``               | which type(s) of expression data to  |
|                               | build the gobject with               |
+-------------------------------+--------------------------------------+
| ``require_data_DT``           | data.table detailing if expected     |
|                               | data items are required or optional  |
|                               | for each ``data_to_use`` workflow    |
+-------------------------------+--------------------------------------+
| ``cores``                     | cores to use                         |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
-------

Steps performed:

-  list(“1. detection of items within”, list(“data_dir”), ” by looking
   for keywords:raw-latex:`\n`“,” assigned through “, list(”dir_items”))

-  list(“2. check of detected items to see if everything needed has been
   found.:raw-latex:`\n`”, ” Dictionary of necessary vs optional items
   for each “, list(”data_to_use”), ” workflow:raw-latex:`\n`“,” is
   provided through “, list(”require_data_DT”))

-  list(“3. if multiple filepaths are found to be matching then select
   the first:raw-latex:`\n`”, ” one. This function is only intended to
   find the first level subdirectories:raw-latex:`\n`“,” and files.”)
