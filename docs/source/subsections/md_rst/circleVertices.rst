==============
circleVertices
==============

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L968



==================

Generate circle polygon vertices

Description
-----------

Generates vertex coordinates for a circle around (0,0) with the given
radius. Modified from packcircles .

Usage
-----

.. code:: r

   circleVertices(radius, npoints = 25)

Arguments
---------

=========== ==============================
Argument    Description
=========== ==============================
``radius``  radius of circle to be drawn
``npoints`` number of vertices to generate
=========== ==============================

Value
-----

a data.table of circle vertices

Seealso
-------

polyStamp rectVertices hexVertices
