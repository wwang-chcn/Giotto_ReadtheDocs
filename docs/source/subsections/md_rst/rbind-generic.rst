=============
rbind-generic
=============

:Date: 1/19/23

``rbind-generic``
=================

Combine objects by rows (Giotto-related)

Description
-----------

row bind two objects

Usage
-----

.. code:: r

   list(list("rbind2"), list("giottoPolygon,giottoPolygon"))(x, y, add_list_ID = TRUE, ...)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``x``                         | item 1 to rbind                      |
+-------------------------------+--------------------------------------+
| ``y``                         | item 2 to rbind                      |
+-------------------------------+--------------------------------------+
| ``add_list_ID``               | whether to generate a list_ID column |
|                               | when giottoPolygons to append have   |
|                               | different names                      |
+-------------------------------+--------------------------------------+
| ``list()``                    | additional params to pass to methods |
+-------------------------------+--------------------------------------+
