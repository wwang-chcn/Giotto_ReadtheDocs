.. _createGiottoPolygonsFromDfr:
``createGiottoPolygonsFromDfr``
===================================

Create giotto polygons from dataframe

Description
-----------

Creates Giotto polygon object from a structured dataframe-like object

Usage
-----

.. code-block:: r

   createGiottoPolygonsFromDfr(segmdfr, name = "cell", calc_centroids = FALSE)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``segmdfr``
     - data.frame-like object with polygon coordinate information (x, y, ID)
   * - ``name``
     - name for polygons
   * - ``calc_centroids``
     - calculate centroids for polygons


Value
-----

giotto polygon object
