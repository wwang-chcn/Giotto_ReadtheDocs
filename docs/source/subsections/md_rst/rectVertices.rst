============
rectVertices
============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L987



================

Generate rectangular polygon vertices

Description
-----------

Generates vertex coordinates for a rectangle with dimensions given
through ``dims`` param.

Usage
-----

.. code:: r

   rectVertices(dims)

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``dims``                      | named vector in the style of c(x =   |
|                               | ``numeric`` , y = ``numeric`` ) that |
|                               | defines the width (x) and height (y) |
|                               | of the generated rectangle polygon.  |
+-------------------------------+--------------------------------------+

Value
-----

a data.table of rectangle vertices

Seealso
-------

polyStamp circleVertices hexVertices
