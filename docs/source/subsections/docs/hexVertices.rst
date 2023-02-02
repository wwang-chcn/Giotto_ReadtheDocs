Generate regular hexagon vertices
---------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L1006
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Generates vertex coordinates for a regular hexagon.

Usage
~~~~~

::

   hexVertices(radius, major_axis = c("v", "h"))

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``radius``                        | radius of the hexagon             |
+-----------------------------------+-----------------------------------+
| ``major_axis``                    | orientation of the major axis 'v' |
|                                   | is vertical (default) and 'h' is  |
|                                   | horizontal                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

a data.table of regular hexagon vertices

See Also
~~~~~~~~

polyStamp circleVertices rectVertices
