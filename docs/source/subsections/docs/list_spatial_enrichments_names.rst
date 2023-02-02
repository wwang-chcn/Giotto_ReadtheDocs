list_spatial_enrichments_names
------------------------------

Description
~~~~~~~~~~~

returns the available spatial enrichment names for a given spatial unit

Usage
~~~~~

::

   list_spatial_enrichments_names(gobject, spat_unit = NULL, feat_type = NULL)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit (e.g. "cell")        |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type (e.g. "rna", "dna",  |
|                                   | "protein")                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

vector of names for available spatial enrichments
