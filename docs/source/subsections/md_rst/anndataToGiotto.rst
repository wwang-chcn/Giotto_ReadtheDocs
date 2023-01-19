===============
anndataToGiotto
===============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/interoperability.R#L20



===================

Convert anndata to Giotto

Description
-----------

Converts a spatial anndata (e.g.Â scanpy) .h5ad file into a Giotto object

Usage
-----

.. code:: r

   anndataToGiotto(
     anndata_path = NULL,
     n_key_added = NULL,
     spatial_key_added = NULL,
     spat_unit = NULL,
     feat_type = NULL,
     python_path = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``anndata_path``              | path to the .h5ad file               |
+-------------------------------+--------------------------------------+
| ``n_key_added``               | equivalent of â€œkey_addedâ€ argument   |
|                               | from scanpy.pp.neighbors(). Cannot   |
|                               | be â€œspatialâ€. This becomes the name  |
|                               | of the nearest network in the        |
|                               | gobject.                             |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | desired spatial unit for conversion, |
|                               | default NULL                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | desired feature type for conversion, |
|                               | default NULL                         |
+-------------------------------+--------------------------------------+
| ``python_path``               | path to python executable within a   |
|                               | conda/miniconda environment          |
+-------------------------------+--------------------------------------+

Details
-------

Function in beta. Converts a .h5ad file into a Giotto object. The
returned Giotto Object will take default insructions with the exception
of the python path, which may be customized. See
```changeGiottoInstructions`` <#changegiottoinstructions>`__ to modify
instructions after creation.

Value
-----

Giotto object
