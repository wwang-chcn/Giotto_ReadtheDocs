====================
create_spat_locs_obj
====================

:Date: 1/19/23

``create_spat_locs_obj``
========================

Create S4 spatLocsObj

Description
-----------

Create an S4 spatLocsObj

Usage
-----

.. code:: r

   create_spat_locs_obj(
     name = "test",
     coordinates = NULL,
     spat_unit = "cell",
     provenance = NULL,
     misc = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``name``                      | name of spatLocsObj                  |
+-------------------------------+--------------------------------------+
| ``coordinates``               | spatial coordinates                  |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit of aggregated           |
|                               | expression (e.g. ‘cell’)             |
+-------------------------------+--------------------------------------+
| ``provenance``                | origin data of aggregated expression |
|                               | information (if applicable)          |
+-------------------------------+--------------------------------------+
| ``misc``                      | misc                                 |
+-------------------------------+--------------------------------------+
