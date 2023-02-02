Load CosMx folder subcellular info
----------------------------------

Description
~~~~~~~~~~~

loads in the feature detections information. Note that the mask images
are still required for a working subcellular object, and those are
loaded in ``createGiottoCosMxObject_subcellular``

Usage
~~~~~

::

   load_cosmx_folder_subcellular(dir_items, FOVs = NULL, cores, verbose = TRUE)

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
