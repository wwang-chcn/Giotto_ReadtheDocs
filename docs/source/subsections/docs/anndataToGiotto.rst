Convert anndata to Giotto
-------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/interoperability.R#L20
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Converts a spatial anndata (e.g. scanpy) .h5ad file into a Giotto object

Usage
~~~~~

::

   anndataToGiotto(anndata_path = NULL, python_path = NULL)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``anndata_path``                  | path to the .h5ad file            |
+-----------------------------------+-----------------------------------+
| ``python_path``                   | path to python executable within  |
|                                   | a conda/miniconda environment     |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Function in beta. Converts a .h5ad file into a Giotto object. The
returned Giotto Object will take default insructions with the exception
of the python path, which may be customized. See
``changeGiottoInstructions`` to modify instructions after creation.

Value
~~~~~

Giotto object
