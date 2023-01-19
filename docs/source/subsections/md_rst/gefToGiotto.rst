===========
gefToGiotto
===========

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/interoperability.R#L20

===============

Convert gef to Giotto

Description
-----------

Converts .gef file (output stereo-seq pipeline) into giotto subcellular
object

Usage
-----

.. code:: r

   gefToGiotto(gef_file, bin_size = "bin100", verbose = TRUE)

Arguments
---------

============ =================================
Argument     Description
============ =================================
``gef_file`` path to .gef file
``bin_size`` bin size to select from .gef file
``verbose``  be verbose
============ =================================

Details
-------

Function in beta. Converts .gef object to Giotto object.

There are six possible choices for bin_size: 1, 10, 20, 50, 100, 200.

See SAW pipeline for additional information about the gef file.
