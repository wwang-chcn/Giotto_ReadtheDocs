===========
hexVertices
===========

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1006



===============

Generate regular hexagon vertices

Description
-----------

Generates vertex coordinates for a regular hexagon.

Usage
-----

.. code:: r

   hexVertices(radius, major_axis = c("v", "h"))

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``radius``                    | radius of the hexagon                |
+-------------------------------+--------------------------------------+
| ``major_axis``                | orientation of the major axis ‘v’ is |
|                               | vertical (default) and ‘h’ is        |
|                               | horizontal                           |
+-------------------------------+--------------------------------------+

Value
-----

a data.table of regular hexagon vertices

Seealso
-------

polyStamp circleVertices rectVertices
