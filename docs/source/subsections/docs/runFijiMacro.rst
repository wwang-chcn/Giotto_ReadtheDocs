Find Fiji location
------------------

Description
~~~~~~~~~~~

| ``fiji`` returns path to preferred Fiji executable.
| This function is modified from jimpipeline by jefferislab

Usage
~~~~~

::

   fiji(fijiPath = NULL)

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``fijiPath``                      | manually set filepath to Fiji     |
|                                   | executable                        |
+-----------------------------------+-----------------------------------+

Examples
~~~~~~~~

::

   ## Not run: 
   # Path to current Fiji executable
   fiji()

   # Set path to preferred Fiji executable (this will be remembered)
   # you can also set options(giotto.fiji="/some/path")
   fiji("/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx")

   ## End(Not run)
