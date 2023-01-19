==================
init_cell_metadata
==================

:Date: 1/19/23

``init_cell_metadata``
======================

Initialize cell metadata slot

Description
-----------

Generate cellMetaObjs to hold cell metadata for each spatial unit

Usage
-----

.. code:: r

   init_cell_metadata(gobject, provenance = NULL)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``provenance``                | provenance information (optional)    |
|                               | and feature type in the giotto       |
|                               | object.                              |
+-------------------------------+--------------------------------------+
