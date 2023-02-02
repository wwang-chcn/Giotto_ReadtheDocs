Subset cell metadata
--------------------

Description
~~~~~~~~~~~

Subset cell metadata from giotto object

Usage
~~~~~

::

   subset_cell_metadata(
     gobject,
     feat_type = NULL,
     cell_ids,
     spat_unit,
     all_feat_types = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. 'rna',         |
|                                   | 'protein')                        |
+-----------------------------------+-----------------------------------+
| ``cell_ids``                      | cell ids to keep                  |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. 'cell')        |
+-----------------------------------+-----------------------------------+
| ``all_feat_types``                | (boolean) applies subset          |
|                                   | operation across the whole        |
|                                   | gobject (ALL feature types),      |
|                                   | ignoring the ``feat_type`` input  |
|                                   | param. Defaults to TRUE.          |
+-----------------------------------+-----------------------------------+
