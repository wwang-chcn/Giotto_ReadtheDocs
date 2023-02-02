addGiottoImageToSpatPlot
------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/images.R#L880
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Add a giotto image to a spatial ggplot object post creation

Usage
~~~~~

::

   addGiottoImageToSpatPlot(
     spatpl = NULL,
     gimage = NULL,
     layer = c("bg", "overlay"),
     alpha = NULL
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``spatpl``                        | a spatial ggplot object           |
+-----------------------------------+-----------------------------------+
| ``gimage``                        | a giotto image, see               |
|                                   | ``createGiottoImage``             |
+-----------------------------------+-----------------------------------+
| ``layer``                         | numeric layer on which to add the |
|                                   | giotto image. OR takes 'bg' or    |
|                                   | 'overlay' as input to designate   |
|                                   | last (bottom/background) or first |
|                                   | (top/overlay)                     |
+-----------------------------------+-----------------------------------+
| ``alpha``                         | (optional) add giotto image to    |
|                                   | plot with transparency. Numeric.  |
|                                   | From 0 (transparent) to 1 (fully  |
|                                   | visible)                          |
+-----------------------------------+-----------------------------------+

Value
~~~~~

an updated spatial ggplot object
