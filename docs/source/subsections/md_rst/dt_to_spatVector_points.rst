=======================
dt_to_spatVector_points
=======================

:Date: 2022-09-20

``dt_to_spatVector_points``
===========================

Convert point data data.table to spatVector

Description
-----------

data.table to spatVector for points

Usage
-----

.. code:: r

   dt_to_spatVector_points(dt, include_values = TRUE, specific_values = NULL)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``dt``                        | data.table                           |
+-------------------------------+--------------------------------------+
| ``include_values``            | include additional values from       |
|                               | data.table as attributes paired with |
|                               | created terra spatVector [boolean]   |
+-------------------------------+--------------------------------------+
| ``specific_values``           | specific values to include as        |
|                               | attributes if include_values == TRUE |
+-------------------------------+--------------------------------------+
