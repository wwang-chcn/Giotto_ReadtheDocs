Read a structured CosMx folder
------------------------------

Description
~~~~~~~~~~~

Read a structured CosMx folder

Usage
~~~~~

::

   read_cosmx_folder(cosmx_dir, verbose = TRUE)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``cosmx_dir``                     | full path to the exported cosmx   |
|                                   | directory                         |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose when building Giotto   |
|                                   | object                            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

path_list a list of cosmx files discovered and their filepaths. NULL
values denote missing items

See Also
~~~~~~~~

createGiottoCosMxObject load_cosmx_folder
