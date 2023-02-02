Create S4 exprObj
-----------------

Description
~~~~~~~~~~~

Create an S4 exprObj

Usage
~~~~~

::

   create_expr_obj(
     name = "test",
     exprMat = NULL,
     spat_unit = "cell",
     feat_type = "rna",
     provenance = NULL,
     misc = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``name``                          | name of exprObj                   |
+-----------------------------------+-----------------------------------+
| ``exprMat``                       | matrix of expression information  |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit of expression (e.g.  |
|                                   | 'cell')                           |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type of expression (e.g.  |
|                                   | 'rna', 'protein')                 |
+-----------------------------------+-----------------------------------+
| ``provenance``                    | origin data of expression         |
|                                   | information (if applicable)       |
+-----------------------------------+-----------------------------------+
| ``misc``                          | misc                              |
+-----------------------------------+-----------------------------------+
