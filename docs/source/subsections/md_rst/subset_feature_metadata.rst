Subset feature metadata
-----------------------

Description
~~~~~~~~~~~

Subset feature metadata from giotto object

Usage
~~~~~

::

   subset_feature_metadata(
     gobject,
     feat_type,
     spat_unit = NULL,
     feat_ids,
     all_spat_units = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. 'rna',         |
|                                   | 'protein')                        |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. 'cell')        |
+-----------------------------------+-----------------------------------+
| ``feat_ids``                      | feature ids to keep               |
+-----------------------------------+-----------------------------------+
| ``all_spat_units``                | (boolean) applies subset          |
|                                   | operation across the whole        |
|                                   | gobject (ALL spat_units),         |
|                                   | ignoring the ``spat_unit`` input  |
|                                   | param. Defaults to TRUE.          |
+-----------------------------------+-----------------------------------+
