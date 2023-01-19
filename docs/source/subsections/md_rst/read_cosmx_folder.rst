=================
read_cosmx_folder
=================

:Date: 1/19/23

``read_cosmx_folder``
=====================

Read a structured CosMx folder

Description
-----------

Read a structured CosMx folder

Usage
-----

.. code:: r

   read_cosmx_folder(cosmx_dir, verbose = TRUE)

Arguments
---------

============= =========================================
Argument      Description
============= =========================================
``cosmx_dir`` full path to the exported cosmx directory
``verbose``   be verbose when building Giotto object
============= =========================================

Value
-----

path_list a list of cosmx files discovered and their filepaths. NULL
values denote missing items

Seealso
-------

createGiottoCosMxObject load_cosmx_folder
