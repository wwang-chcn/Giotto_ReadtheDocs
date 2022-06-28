
``estimateImageBg``
=======================

estimateImageBg

Description
-----------

helps to estimate which color is the background color of your plot

Usage
-----

.. code-block:: r

   estimateImageBg(mg_object, top_color_range = 1:50)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``mg_object``
     - magick image or Giotto image object
   * - ``top_color_range``
     - top possible background colors to return


Value
-----

vector of pixel color frequencies and an associated barplot
