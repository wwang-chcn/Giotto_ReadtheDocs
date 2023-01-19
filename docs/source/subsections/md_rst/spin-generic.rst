============
spin-generic
============

:Date: 1/19/23

``spin-generic``
================

Spin an object

Description
-----------

Spin (rotate) an object spatially (limited to xy rotations)

Usage
-----

.. code:: r

   list(list("spin"), list("giottoPolygon"))(x, angle, x0 = NULL, y0 = NULL)
   list(list("spin"), list("giottoPoints"))(x, angle, x0 = NULL, y0 = NULL)
   list(list("spin"), list("spatLocsObj"))(
     x,
     angle = NULL,
     x0 = NULL,
     y0 = NULL,
     z0 = NULL,
     xy_angle = NULL,
     zy_angle = NULL,
     xz_angle = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``x``                         | object                               |
+-------------------------------+--------------------------------------+
| ``angle``                     | numeric. Angle of rotation in        |
|                               | degrees                              |
+-------------------------------+--------------------------------------+
| ``x0``                        | numeric. x-coordinate of the center  |
|                               | of rotation. Defaults to center x    |
|                               | val if not given.                    |
+-------------------------------+--------------------------------------+
| ``y0``                        | numeric. y-coordinate of the center  |
|                               | of rotation. Defaults to center y    |
|                               | val if not given.                    |
+-------------------------------+--------------------------------------+
| ``z0``                        | spatLocsObj specific. Numeric.       |
|                               | z-coordinate of the center of        |
|                               | rotation. Depending on if z data is  |
|                               | present, defaults to either 0 or     |
|                               | center z val if not given.           |
+-------------------------------+--------------------------------------+
| ``xy_angle``                  | spatLocsObj specific. xy plane       |
|                               | rotation in degrees. Overrides angle |
|                               | param                                |
+-------------------------------+--------------------------------------+
| ``zy_angle``                  | spatLocsObj specific. zy plane       |
|                               | rotation                             |
+-------------------------------+--------------------------------------+
| ``xz_angle``                  | spatLocsObj specific. xz plane       |
|                               | rotation                             |
+-------------------------------+--------------------------------------+
