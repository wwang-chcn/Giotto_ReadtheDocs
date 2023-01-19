====================
smoothGiottoPolygons
====================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L850



========================

smoothGiottoPolygons

Description
-----------

Smooths Giotto polygon object

Usage
-----

.. code:: r

   smoothGiottoPolygons(
     gpolygon,
     vertices = 20,
     k = 3,
     set_neg_to_zero = TRUE,
     ...
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gpolygon``                  | giotto polygon object                |
+-------------------------------+--------------------------------------+
| ``vertices``                  | number of vertices                   |
+-------------------------------+--------------------------------------+
| ``k``                         | k                                    |
+-------------------------------+--------------------------------------+
| ``set_neg_to_zero``           | set negative values to zero          |
|                               | (default: TRUE)                      |
+-------------------------------+--------------------------------------+
| ``...``                       | additional params to pass to         |
|                               | ``spline``                           |
+-------------------------------+--------------------------------------+

Value
-----

Smoothed Giotto polygon object with reduced vertices

Seealso
-------

```spline`` <#spline>`__
