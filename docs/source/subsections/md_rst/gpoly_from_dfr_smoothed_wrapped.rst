===============================
gpoly_from_dfr_smoothed_wrapped
===============================

:Date: 1/19/23

``gpoly_from_dfr_smoothed_wrapped``
===================================

Polygon creation and smoothing for parallel

Description
-----------

Polygon creation and smoothing for parallel

Usage
-----

.. code:: r

   gpoly_from_dfr_smoothed_wrapped(
     segmdfr,
     name = "cell",
     calc_centroids = FALSE,
     smooth_polygons = FALSE,
     vertices = 20L,
     k = 3L,
     set_neg_to_zero = TRUE,
     skip_eval_dfr = FALSE,
     copy_dt = TRUE,
     verbose = TRUE
   )
