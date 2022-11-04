=====================
writeGiottoLargeImage
=====================

:Date: 2022-10-06

https://github.com/drieslab/Giotto/tree/suite/R/images.R#L1807


Description
===========

Write full resolution image to file. Filetype extension should be
included in ``filename`` argument. Be careful if write time and disk
space needed if image is very large.

Usage
=====

.. code:: r

   writeGiottoLargeImage(
     giottoLargeImage = NULL,
     gobject = NULL,
     largeImage_name = NULL,
     filename = NULL,
     dataType = NULL,
     max_intensity = NULL,
     overwrite = FALSE,
     verbose = TRUE
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``giottoLargeImage``          | giottoLargeImage object              |
+-------------------------------+--------------------------------------+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``largeImage_name``           | name of giottoLargeImage             |
+-------------------------------+--------------------------------------+
| ``filename``                  | file name and path to write the      |
|                               | image to                             |
+-------------------------------+--------------------------------------+
| ``dataType``                  | (optional) values for ``dataType``   |
|                               | are â€œINT1Uâ€, â€œINT2Uâ€, â€œINT2Sâ€,       |
|                               | â€œINT4Uâ€, â€œINT4Sâ€, â€œFLT4Sâ€, â€œFLT8Sâ€.  |
|                               | The first three letters indicate     |
|                               | whether the dataType is integer      |
|                               | (whole numbers) of a real number     |
|                               | (decimal numbers), the fourth        |
|                               | character indicates the number of    |
|                               | bytes used (allowing for large       |
|                               | numbers and/or more precision), and  |
|                               | the â€œSâ€ or â€œUâ€ indicate whether the  |
|                               | values are signed (both negative and |
|                               | positive) or unsigned (positive      |
|                               | values only).                        |
+-------------------------------+--------------------------------------+
| ``max_intensity``             | (optional) image max intensity value |
|                               | from which ``dataType`` can be       |
|                               | automatically determined             |
+-------------------------------+--------------------------------------+
| ``overwrite``                 | Overwrite if ``filename`` is already |
|                               | existing                             |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+
