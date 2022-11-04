=====================
stitchTileCoordinates
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/general_help.R#L254


Description
===========

Helper function to stitch tile coordinates together to form one complete
picture

Usage
=====

.. code:: r

   stitchTileCoordinates(location_file, Xtilespan, Ytilespan)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``location_file``             | location dataframe with X and Y      |
|                               | coordinates                          |
+-------------------------------+--------------------------------------+
| ``Xtilespan``                 | numerical value specifying the width |
|                               | of each tile                         |
+-------------------------------+--------------------------------------+
| ``Ytilespan``                 | numerical value specifying the       |
|                               | height of each tile                  |
+-------------------------------+--------------------------------------+
