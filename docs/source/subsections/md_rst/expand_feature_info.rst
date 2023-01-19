===================
expand_feature_info
===================

:Date: 1/19/23

``expand_feature_info``
=======================

expand_feature_info

Description
-----------

low level function to expand feature coordinates

Usage
-----

.. code:: r

   expand_feature_info(
     spatial_feat_info,
     expand_counts = FALSE,
     count_info_column = "count",
     jitter = c(0, 0),
     verbose = TRUE
   )

Value
-----

data.table
