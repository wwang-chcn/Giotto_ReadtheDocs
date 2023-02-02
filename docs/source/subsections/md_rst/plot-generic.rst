Preview a Giotto spatial object
-------------------------------

Description
~~~~~~~~~~~

S4 generic for previewing Giotto's image and subcellular objects.

Usage
~~~~~

::

   ## S4 method for signature 'giottoImage,missing'
   plot(x, y, ...)

   ## S4 method for signature 'giottoLargeImage,missing'
   plot(x, y, ...)

   ## S4 method for signature 'giottoPolygon,missing'
   plot(x, y, point_size = 0.1, type = c("poly", "centroid"), ...)

   ## S4 method for signature 'giottoPoints,missing'
   plot(x, y, point_size = 0.1, feats = NULL, ...)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``x``                             | giotto image, giottoPolygon, or   |
|                                   | giottoPoints object               |
+-----------------------------------+-----------------------------------+
| ``y``                             | Not used.                         |
+-----------------------------------+-----------------------------------+
| ``...``                           | additional parameters to pass     |
+-----------------------------------+-----------------------------------+
| ``point_size``                    | size of points when plotting      |
|                                   | giottoPoints                      |
+-----------------------------------+-----------------------------------+
| ``type``                          | what to plot: either 'poly'       |
|                                   | (default) or polygon 'centroid'   |
+-----------------------------------+-----------------------------------+
| ``feats``                         | specific features to plot within  |
|                                   | giottoPoints object (defaults to  |
|                                   | NULL, meaning all available       |
|                                   | features)                         |
+-----------------------------------+-----------------------------------+

Functions
~~~~~~~~~

-  ``plot(x = giottoImage, y = missing)``: Plot *magick*-based
   giottoImage object. ... param passes to ``plot_giottoImage_MG``

-  ``plot(x = giottoLargeImage, y = missing)``: Plot *terra*-based
   giottoLargeImage object. ... param passes to
   ``plot_giottoLargeImage``

-  ``plot(x = giottoPolygon, y = missing)``: Plot *terra*-based
   giottoPolygon object. ... param passes to ``plot``

-  ``plot(x = giottoPoints, y = missing)``: *terra*-based giottoPoint
   object. ... param passes to ``plot``
