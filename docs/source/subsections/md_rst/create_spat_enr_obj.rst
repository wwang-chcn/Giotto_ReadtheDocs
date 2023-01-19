===================
create_spat_enr_obj
===================

:Date: 1/19/23

``create_spat_enr_obj``
=======================

Create S4 spatEnrObj

Description
-----------

Create S4 spatEnrObj

Usage
-----

.. code:: r

   create_spat_enr_obj(
     name = "test",
     method = NA_character_,
     enrichDT = NULL,
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
| ``name``                      | name of S4 spatEnrObj                |
+-------------------------------+--------------------------------------+
| ``method``                    | method used to generate spatial      |
|                               | enrichment information               |
+-------------------------------+--------------------------------------+
| ``enrichDT``                  | spatial enrichment results, provided |
|                               | as a data.table                      |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit of aggregated           |
|                               | expression (e.g. ‘cell’)             |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type of aggregated           |
|                               | expression (e.g. ‘rna’, ‘protein’)   |
+-------------------------------+--------------------------------------+
| ``provenance``                | origin data of aggregated expression |
|                               | information (if applicable)          |
+-------------------------------+--------------------------------------+
| ``misc``                      | misc additional information about he |
|                               | spatial enrichment or how it was     |
|                               | generated                            |
+-------------------------------+--------------------------------------+
