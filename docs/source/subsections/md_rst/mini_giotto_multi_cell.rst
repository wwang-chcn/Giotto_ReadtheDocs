
``mini_giotto_multi_cell``
==============================

mini Giotto object for spatial multi-cell resolution data

Description
-----------

Mini Giotto object created from the Brain Visium 10X data.

Format
------

An object of class ``"giotto"`` ; see `\ ``createGiottoObject`` <#creategiottoobject>`_ .

Usage
-----

.. code-block:: r

   data(mini_giotto_multi_cell)

References
----------

10 Genomics Visium technology
 ( `10xgenomics <https://www.10xgenomics.com/spatial-transcriptomics/>`_ )

Examples
--------

.. code-block:: r

   data(mini_giotto_multi_cell)

   spatPlot(mini_giotto_multi_cell, cell_color = 'cell_types', point_size = 5)
