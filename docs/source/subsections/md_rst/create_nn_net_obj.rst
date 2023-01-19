=================
create_nn_net_obj
=================

:Date: 1/19/23

``create_nn_net_obj``
=====================

Create S4 nnNetObj

Description
-----------

Create an S4 nnNetObj

Usage
-----

.. code:: r

   create_nn_net_obj(
     name = "test",
     nn_type = NA_character_,
     igraph = NULL,
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
| ``name``                      | name of nnNetObj                     |
+-------------------------------+--------------------------------------+
| ``nn_type``                   | type of nearest neighbor network     |
+-------------------------------+--------------------------------------+
| ``igraph``                    | igraph object containing nearest     |
|                               | neighbor information                 |
+-------------------------------+--------------------------------------+
| ``misc``                      | misc                                 |
+-------------------------------+--------------------------------------+
