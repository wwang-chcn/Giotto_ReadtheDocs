Scale spatial locations
-----------------------

Description
~~~~~~~~~~~

Simple scaling of spatial locations by given ``scale_factor``. Values
will be scaled from the coordinate origin or coordinates provided
through ``scenter`` param.

Usage
~~~~~

::

   scale_spatial_locations(
     spatlocs,
     scale_factor = c(x = 1, y = 1, z = 1),
     scenter = c(x = 0, y = 0, z = 0)
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``spatlocs``                      | spatial locations information to  |
|                                   | scale                             |
+-----------------------------------+-----------------------------------+
| ``scale_factor``                  | scaling factor to apply to        |
|                                   | coordinates.                      |
+-----------------------------------+-----------------------------------+
| ``scenter``                       | center from which to scale        |
|                                   | spatial coordinates. Given as     |
|                                   | vector of xy(z) coordinates.      |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

``scale_factor`` either given as a single value where it will be applied
to x, y, and z (if available) dimensions or as a vector of named values
for 'x', 'y', (and 'z').
