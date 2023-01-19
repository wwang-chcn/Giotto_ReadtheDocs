==========
loadGiotto
==========

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/general_help.R#L778



==============

loadGiotto

Description
-----------

Saves a Giotto object to a specific folder structure

Usage
-----

.. code:: r

   loadGiotto(
     path_to_folder,
     load_params = list(),
     reconnect_giottoImage = TRUE,
     python_path = NULL,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``path_to_folder``            | path to folder where Giotto object   |
|                               | was stored with                      |
|                               | ```saveGiotto`` <#savegiotto>`__     |
+-------------------------------+--------------------------------------+
| ``load_params``               | additional parameters for loading or |
|                               | reading giotto object                |
+-------------------------------+--------------------------------------+
| ``reconnect_giottoImage``     | (default = TRUE) whether to attempt  |
|                               | reconnection of magick based image   |
|                               | objects                              |
+-------------------------------+--------------------------------------+
| ``python_path``               | (optional) manually set your python  |
|                               | path                                 |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
-------

Works together with ```saveGiotto`` <#savegiotto>`__ to save and re-load
Giotto objects. Additional load_params need to be provided as a list and
will go to ```readRDS`` <#readrds>`__ or ```qread`` <#qread>`__ You can
set the python path, alternatively it will look for an existing Giotto
python environment.

Value
-----

Giotto object
