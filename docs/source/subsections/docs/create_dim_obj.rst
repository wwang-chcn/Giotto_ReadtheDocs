Create S4 dimObj
----------------

Description
~~~~~~~~~~~

Create an S4 dimObj

Usage
~~~~~

::

   create_dim_obj(
     name = "test",
     reduction = NA_character_,
     reduction_method = NA_character_,
     coordinates = NULL,
     spat_unit = "cell",
     feat_type = "rna",
     provenance = NULL,
     misc = NULL,
     my_rownames = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``name``                          | name of dimObj                    |
+-----------------------------------+-----------------------------------+
| ``reduction_method``              | method used to generate dimension |
|                                   | reduction                         |
+-----------------------------------+-----------------------------------+
| ``coordinates``                   | embedding coordinates             |
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
| ``misc``                          | misc                              |
+-----------------------------------+-----------------------------------+
