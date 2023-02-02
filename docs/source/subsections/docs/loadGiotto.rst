loadGiotto
----------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/general_help.R#L778
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Saves a Giotto object to a specific folder structure

Usage
~~~~~

::

   loadGiotto(
     path_to_folder,
     load_params = list(),
     python_path = NULL,
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``path_to_folder``                | path to folder where Giotto       |
|                                   | object was stored with            |
|                                   | ``saveGiotto``                    |
+-----------------------------------+-----------------------------------+
| ``load_params``                   | additional parameters for loading |
|                                   | or reading giotto object          |
+-----------------------------------+-----------------------------------+
| ``python_path``                   | (optional) manually set your      |
|                                   | python path                       |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Works together with ``saveGiotto`` to save and re-load Giotto objects.
Additional load_params need to be provided as a list and will go to
``readRDS`` or ``qread`` You can set the python path, alternatively it
will look for an existing Giotto python environment.

Value
~~~~~

Giotto object
