estimateImageBg
---------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/images.R#L497
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

helps to estimate which color is the background color of your plot

Usage
~~~~~

::

   estimateImageBg(mg_object, top_color_range = 1:50)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``mg_object``                     | magick image or Giotto image      |
|                                   | object                            |
+-----------------------------------+-----------------------------------+
| ``top_color_range``               | top possible background colors to |
|                                   | return                            |
+-----------------------------------+-----------------------------------+

Value
~~~~~

vector of pixel color frequencies and an associated barplot
