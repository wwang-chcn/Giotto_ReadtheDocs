Generate circle polygon vertices
--------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L968
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Generates vertex coordinates for a circle around (0,0) with the given
radius. Modified from packcircles.

Usage
~~~~~

::

   circleVertices(radius, npoints = 25)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``radius``                        | radius of circle to be drawn      |
+-----------------------------------+-----------------------------------+
| ``npoints``                       | number of vertices to generate    |
+-----------------------------------+-----------------------------------+

Value
~~~~~

a data.table of circle vertices

See Also
~~~~~~~~

polyStamp rectVertices hexVertices
