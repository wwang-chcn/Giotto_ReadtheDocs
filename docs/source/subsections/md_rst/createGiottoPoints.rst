.. _createGiottoPoints:
``createGiottoPoints``
==========================

Create giotto points object

Description
-----------

Creates Giotto point object from a structured dataframe-like object

Usage
-----

.. code-block:: r

   createGiottoPoints(x, feat_type = "rna")

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``x``
     - spatVector or data.frame-like object with points coordinate information (x, y, feat ID)
   * - ``feat_type``
     - feature type


Value
-----

giottoPoints
