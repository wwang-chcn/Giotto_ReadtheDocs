Generate rectangular polygon vertices
-------------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L987
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Generates vertex coordinates for a rectangle with dimensions given
through ``dims`` param.

Usage
~~~~~

::

   rectVertices(dims)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``dims``                          | named vector in the style of c(x  |
|                                   | = ``numeric``, y = ``numeric``)   |
|                                   | that defines the width (x) and    |
|                                   | height (y) of the generated       |
|                                   | rectangle polygon.                |
+-----------------------------------+-----------------------------------+

Value
~~~~~

a data.table of rectangle vertices

See Also
~~~~~~~~

polyStamp circleVertices hexVertices
