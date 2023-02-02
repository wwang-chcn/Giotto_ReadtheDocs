registerGiottoObjectListRvision
-------------------------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/image_registration.R#L494
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

Function to spatially align gobject data based on Rvision image
registration.

Usage
~~~~~

::

   registerGiottoObjectListRvision(
     gobject_list = gobject_list,
     image_list = NULL,
     save_dir = NULL,
     spatloc_unreg = NULL,
     spatloc_reg_name = "raw",
     verbose = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject_list``                  | list of gobjects to register      |
+-----------------------------------+-----------------------------------+
| ``image_list``                    | Filepaths to unregistered images  |
+-----------------------------------+-----------------------------------+
| ``save_dir``                      | (Optional) If given, save         |
|                                   | registered images to this         |
|                                   | directory                         |
+-----------------------------------+-----------------------------------+
| ``spatloc_unreg``                 | spatial locations to use          |
+-----------------------------------+-----------------------------------+
| ``spatloc_reg_name``              | name for registered spatial       |
|                                   | locations to. Defaults to         |
|                                   | replacement of spat_unreg         |
|                                   | (optional)                        |
+-----------------------------------+-----------------------------------+
| ``verbose``                       | be verbose                        |
+-----------------------------------+-----------------------------------+

Value
~~~~~

list of registered giotto objects where the registered images and
spatial locations
