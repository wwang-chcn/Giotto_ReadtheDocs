============================
rbind2_giotto_polygon_hetero
============================

:Date: 1/19/23

``rbind2_giotto_polygon_hetero``
================================

Append giotto polygons of different names

Description
-----------

Append two giotto polygons together of different names Performed
recursively through ``rbind2`` and ``rbind`` . Generates an additional
list_ID attribute based on the original names. The object name also
becomes a combination of both previous names

Usage
-----

.. code:: r

   rbind2_giotto_polygon_hetero(x, y, new_name, add_list_ID = TRUE)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``x``                         | ``giottoPolygon`` 1                  |
+-------------------------------+--------------------------------------+
| ``y``                         | ``giottoPolygon`` 2                  |
+-------------------------------+--------------------------------------+
| ``add_list_ID``               | whether to include the name of the   |
|                               | origin ``giottoPolygons`` as a new   |
|                               | ‘list_ID’ attribute                  |
+-------------------------------+--------------------------------------+
| ``poly_names``                | sorted polygon names to be used in   |
|                               | the combined ``giottoPolygon``       |
|                               | object                               |
+-------------------------------+--------------------------------------+
