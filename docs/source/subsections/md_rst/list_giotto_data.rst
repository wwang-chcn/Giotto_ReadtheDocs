================
list_giotto_data
================

:Date: 2022-09-20

``list_giotto_data``
====================

list_giotto_data

Description
-----------

list the available data within specified giotto object slot

Usage
-----

.. code:: r

   list_giotto_data(gobject = NULL, slot = NULL, ...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``slot``                      | giotto object slot of interest       |
|                               | (e.g. “expression”, “spatial_locs”,  |
|                               | etc.)                                |
+-------------------------------+--------------------------------------+
| ``...``                       | additional params to pass            |
+-------------------------------+--------------------------------------+

Value
-----

names and locations of data within giotto object slot
