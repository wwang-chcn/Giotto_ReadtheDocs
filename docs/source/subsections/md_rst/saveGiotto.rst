==========
saveGiotto
==========

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/general_help.R#L642



==============

saveGiotto

Description
-----------

Saves a Giotto object to a specific folder structure

Usage
-----

.. code:: r

   saveGiotto(
     gobject,
     foldername = "saveGiottoDir",
     dir = getwd(),
     method = c("RDS", "qs"),
     method_params = list(),
     overwrite = FALSE,
     image_filetype = "PNG",
     verbose = TRUE,
     ...
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | Giotto object                        |
+-------------------------------+--------------------------------------+
| ``foldername``                | Folder name                          |
+-------------------------------+--------------------------------------+
| ``dir``                       | Directory where to create the folder |
+-------------------------------+--------------------------------------+
| ``method``                    | method to save main object           |
+-------------------------------+--------------------------------------+
| ``method_params``             | additional method parameters for RDS |
|                               | or qs                                |
+-------------------------------+--------------------------------------+
| ``overwrite``                 | Overwrite existing folders           |
+-------------------------------+--------------------------------------+
| ``image_filetype``            | the image filetype to use, see       |
|                               | ```writeRaster`` <#writeraster>`__   |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
| ``...``                       | additional parameters for            |
|                               | ```writeRaster`` <#writeraster>`__   |
+-------------------------------+--------------------------------------+

Details
-------

Works together with ```loadGiotto`` <#loadgiotto>`__ to save and re-load
Giotto objects. Additional method_params need to be provided as a list
and will go to ```saveRDS`` <#saverds>`__ or ```qsave`` <#qsave>`__

Value
-----

Creates a directory with Giotto object information
