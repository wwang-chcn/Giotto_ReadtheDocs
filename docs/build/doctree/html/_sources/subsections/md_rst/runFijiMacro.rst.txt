
``fiji``
============

fiji

Description
-----------

``fiji`` returns path to preferred Fiji executable

Usage
-----

.. code-block:: r

   fiji(fijiPath = NULL)

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``fijiPath``
     - manually set filepath to Fiji executable


Examples
--------

.. code-block:: r

   # Path to current Fiji executable
   list("\n", "fiji()\n")

   # This function was taken and modified from jimpipeline by jefferislab #
   # Set path to preferred Fiji executable (this will be remembered)
   # you can also set options(giotto.fiji="/some/path")
   fiji("/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx")
