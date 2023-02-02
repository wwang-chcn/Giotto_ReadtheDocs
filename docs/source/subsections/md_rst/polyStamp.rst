Spatial polygons stamp
----------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/giotto_structures.R#L936
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Takes a given stamp polygon and places it at each spatial location
provided.

Usage
~~~~~

::

   polyStamp(stamp_dt, spatlocs)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``stamp_dt``                      | data.table with x and y vertices  |
|                                   | for a polygon to be stamped.      |
|                                   | Column names are expected to be   |
|                                   | 'x' and 'y' respectively          |
+-----------------------------------+-----------------------------------+
| ``spatlocs``                      | spatial locations with x and y    |
|                                   | coordinates where polygons should |
|                                   | be stamped. Column names are      |
|                                   | expected to be 'sdimx' and        |
|                                   | 'sdimy' respectively.             |
+-----------------------------------+-----------------------------------+

Value
~~~~~

returns a data.table of polygon vertices
