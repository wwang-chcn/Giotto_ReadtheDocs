=================
addGiottoPoints3D
=================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1292


Description
===========

Add sub cellular 3D coordinates to Giotto object

Usage
=====

.. code:: r

   addGiottoPoints3D(gobject, coords, feat_type = "rna")

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | A Giotto object.                     |
+-------------------------------+--------------------------------------+
| ``coords``                    | A `data.frame <#data.frame>`__ or    |
|                               | ``spatVector`` with at least xyz     |
|                               | coordinates and feature ids.         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | a character. The feat_type must      |
|                               | previously exist in the Giotto       |
|                               | object. Default = â€œrnaâ€.             |
+-------------------------------+--------------------------------------+

Value
=====

A Giotto object with a ``spatVector`` object in the feat_info slot
