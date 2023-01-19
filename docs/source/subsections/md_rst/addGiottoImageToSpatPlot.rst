========================
addGiottoImageToSpatPlot
========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/images.R#L880



============================

addGiottoImageToSpatPlot

Description
-----------

Add a giotto image to a spatial ggplot object post creation

Usage
-----

.. code:: r

   addGiottoImageToSpatPlot(
     spatpl = NULL,
     gimage = NULL,
     layer = c("bg", "overlay"),
     alpha = NULL
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``spatpl``                    | a spatial ggplot object              |
+-------------------------------+--------------------------------------+
| ``gimage``                    | a giotto image, see                  |
|                               | ```createG                           |
|                               | iottoImage`` <#creategiottoimage>`__ |
+-------------------------------+--------------------------------------+
| ``layer``                     | numeric layer on which to add the    |
|                               | giotto image. OR takes ‘bg’ or       |
|                               | ‘overlay’ as input to designate last |
|                               | (bottom/background) or first         |
|                               | (top/overlay)                        |
+-------------------------------+--------------------------------------+
| ``alpha``                     | (optional) add giotto image to plot  |
|                               | with transparency. Numeric. From 0   |
|                               | (transparent) to 1 (fully visible)   |
+-------------------------------+--------------------------------------+

Value
-----

an updated spatial ggplot object
