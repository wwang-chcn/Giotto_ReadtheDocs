=============================
load_cosmx_folder_subcellular
=============================

:Date: 1/19/23

``load_cosmx_folder_subcellular``
=================================

Load CosMx folder subcellular info

Description
-----------

loads in the feature detections information. Note that the mask images
are still required for a working subcellular object, and those are
loaded in
```createGiottoCosMxObject_subcellular`` <#creategiottocosmxobjectsubcellular>`__

Usage
-----

.. code:: r

   load_cosmx_folder_subcellular(dir_items, FOVs = NULL, cores, verbose = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``FOVs``                      | field of views to load (only affects |
|                               | subcellular data and images)         |
+-------------------------------+--------------------------------------+
| ``cores``                     | how many cores or threads to use to  |
|                               | read data if paths are provided      |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose when building Giotto      |
|                               | object                               |
+-------------------------------+--------------------------------------+
