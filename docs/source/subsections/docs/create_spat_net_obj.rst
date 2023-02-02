Create S4 spatialNetworkObj
---------------------------

Description
~~~~~~~~~~~

Create S4 spatialNetworkObj

Usage
~~~~~

::

   create_spat_net_obj(
     name = "test",
     method = NA_character_,
     parameters = NULL,
     outputObj = NULL,
     networkDT = NULL,
     networkDT_before_filter = NULL,
     cellShapeObj = NULL,
     crossSectionObjects = NULL,
     spat_unit = "cell",
     provenance = NULL,
     misc = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``name``                          | name of spatialNetworkObj         |
+-----------------------------------+-----------------------------------+
| ``method``                        | method used to generate spatial   |
|                                   | network                           |
+-----------------------------------+-----------------------------------+
| ``parameters``                    | additional method-specific        |
|                                   | parameters used during spatial    |
|                                   | network generation                |
+-----------------------------------+-----------------------------------+
| ``outputObj``                     | network geometry object           |
+-----------------------------------+-----------------------------------+
| ``networkDT``                     | data.table of network             |
|                                   | connections, distances, and       |
|                                   | weightings                        |
+-----------------------------------+-----------------------------------+
| ``networkDT_before_filter``       | unfiltered data.table of network  |
|                                   | connections, distances, and       |
|                                   | weightings                        |
+-----------------------------------+-----------------------------------+
| ``cellShapeObj``                  | network cell shape information    |
+-----------------------------------+-----------------------------------+
| ``crossSectionObjects``           | crossSectionObjects (see          |
|                                   | ``create_crossSection_object``)   |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit tag                  |
+-----------------------------------+-----------------------------------+
| ``provenance``                    | origin of aggregated information  |
|                                   | (if applicable)                   |
+-----------------------------------+-----------------------------------+
| ``misc``                          | misc                              |
+-----------------------------------+-----------------------------------+
