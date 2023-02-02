Rotate spatial locations
------------------------

Description
~~~~~~~~~~~

Rotate given spatlocs by given radians

Usage
~~~~~

::

   rotate_spatial_locations(
     spatlocs,
     rotateradians = c(xy = 0, zy = 0, xz = 0),
     rcenter = c(x = 0, y = 0, z = 0)
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``spatlocs``                      | spatial locations to use          |
+-----------------------------------+-----------------------------------+
| ``rotateradians``                 | Named vector of radians for       |
|                                   | rotation along each of the 3      |
|                                   | coordinate axes. If only a single |
|                                   | value is provided, it will be     |
|                                   | treated as xy rotation.           |
+-----------------------------------+-----------------------------------+
| ``rcenter``                       | center of rotation given as       |
|                                   | vector xy(z) coordinates          |
|                                   | (defaults to coordinate center)   |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Radians are provided through ``rotateradians`` param as a named vector
with values for ``xy`` (yaw), ``zy`` (pitch), ``xz`` (roll)
