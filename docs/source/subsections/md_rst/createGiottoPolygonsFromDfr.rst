===========================
createGiottoPolygonsFromDfr
===========================

:Date: 2022-09-22

Description
===========

Creates Giotto polygon object from a structured dataframe-like object

Usage
=====

.. code:: r

   createGiottoPolygonsFromDfr(segmdfr, name = "cell", calc_centroids = FALSE)

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``segmdfr``                   | data.frame-like object with polygon  |
|                               | coordinate information (x, y, ID)    |
+-------------------------------+--------------------------------------+
| ``name``                      | name for polygons                    |
+-------------------------------+--------------------------------------+
| ``calc_centroids``            | calculate centroids for polygons     |
+-------------------------------+--------------------------------------+

Value
=====

giotto polygon object
