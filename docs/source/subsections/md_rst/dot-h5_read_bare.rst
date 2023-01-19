================
dot-h5_read_bare
================

:Date: 1/19/23

``.h5_read_bare``
=================

Read dataset from opened HDF5 with C functions

Description
-----------

Read dataset from opened HDF5 with C functions

Usage
-----

.. code:: r

   .h5_read_bare(file, name = "", dapl)

Arguments
---------

======== ====================================================
Argument Description
======== ====================================================
``file`` opened HDF5 file
``name`` dataset name within
``dapl`` HDF5 property list (H5Pcreate(‘H5P_DATASET_ACCESS’))
======== ====================================================
