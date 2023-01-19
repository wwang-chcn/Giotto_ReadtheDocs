====================
create_spat_grid_obj
====================

:Date: 1/19/23

``create_spat_grid_obj``
========================

Create S4 spatialGridObj

Description
-----------

Create S4 spatialGridObj

Usage
-----

.. code:: r

   create_spat_grid_obj(
     name = "test",
     method = NA_character_,
     parameters = NULL,
     gridDT = NULL,
     spat_unit = "cell",
     feat_type = "rna",
     provenance = NULL,
     misc = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``name``                      | name of spatialGridObj               |
+-------------------------------+--------------------------------------+
| ``method``                    | method used to generate spatial grid |
+-------------------------------+--------------------------------------+
| ``parameters``                | additional method-specific           |
|                               | parameters used during spatial grid  |
|                               | generation                           |
+-------------------------------+--------------------------------------+
| ``gridDT``                    | data.table holding the spatial grid  |
|                               | information                          |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``provenance``                | origin of aggregated information (if |
|                               | applicable)                          |
+-------------------------------+--------------------------------------+
| ``misc``                      | misc                                 |
+-------------------------------+--------------------------------------+
