Create S4 featMetaObj
---------------------

Description
~~~~~~~~~~~

Create an S4 featMetaObj

Usage
~~~~~

::

   create_feat_meta_obj(
     metaDT = NULL,
     col_desc = NA_character_,
     spat_unit = "cell",
     feat_type = "rna",
     provenance = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``col_desc``                      | (optional) character vector       |
|                                   | describing columns of the         |
|                                   | metadata                          |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit of aggregated        |
|                                   | expression (e.g. 'cell')          |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type of aggregated        |
|                                   | expression (e.g. 'rna',           |
|                                   | 'protein')                        |
+-----------------------------------+-----------------------------------+
| ``provenance``                    | origin data of aggregated         |
|                                   | expression information (if        |
|                                   | applicable)                       |
+-----------------------------------+-----------------------------------+
| ``metadata``                      | metadata info                     |
+-----------------------------------+-----------------------------------+
| ``misc``                          | misc                              |
+-----------------------------------+-----------------------------------+
