Select polygon info
-------------------

Description
~~~~~~~~~~~

Select polygon info

Usage
~~~~~

::

   select_polygon_info(...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``...``                           | Arguments passed on to            |
|                                   | ``get_polygon_info``              |
|                                   |                                   |
|                                   | ``gobject``                       |
|                                   |    giotto object                  |
|                                   |                                   |
|                                   | ``polygon_name``                  |
|                                   |    name of polygons. Default      |
|                                   |    "cell"                         |
|                                   |                                   |
|                                   | ``polygon_overlap``               |
|                                   |    include polygon overlap        |
|                                   |    information                    |
|                                   |                                   |
|                                   | ``return_giottoPolygon``          |
|                                   |    (Defaults to FALSE) Return as  |
|                                   |    giottoPolygon S4 object        |
+-----------------------------------+-----------------------------------+

See Also
~~~~~~~~

``get_polygon_info``
