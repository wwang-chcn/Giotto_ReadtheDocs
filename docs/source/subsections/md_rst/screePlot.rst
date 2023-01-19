=========
screePlot
=========

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/dimension_reduction.R#L733



=============

screePlot

Description
-----------

identify significant principal components (PCs) using an screeplot
(a.k.a. elbowplot)

Usage
-----

.. code:: r

   screePlot(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     name = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     reduction = c("cells", "feats"),
     method = c("irlba", "exact", "random", "factominer"),
     rev = FALSE,
     feats_to_use = NULL,
     genes_to_use = NULL,
     center = F,
     scale_unit = F,
     ncp = 100,
     ylim = c(0, 20),
     verbose = T,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "screePlot",
     ...
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``spat_unit``                 | spatial unit                         |
+-------------------------------+--------------------------------------+
| ``feat_type``                 | feature type                         |
+-------------------------------+--------------------------------------+
| ``name``                      | name of PCA object if available      |
+-------------------------------+--------------------------------------+
| ``expression_values``         | expression values to use             |
+-------------------------------+--------------------------------------+
| ``reduction``                 | cells or features                    |
+-------------------------------+--------------------------------------+
| ``method``                    | which implementation to use          |
+-------------------------------+--------------------------------------+
| ``rev``                       | do a reverse PCA                     |
+-------------------------------+--------------------------------------+
| ``feats_to_use``              | subset of features to use for PCA    |
+-------------------------------+--------------------------------------+
| ``genes_to_use``              | deprecated, use feats_to_use         |
+-------------------------------+--------------------------------------+
| ``center``                    | center data before PCA               |
+-------------------------------+--------------------------------------+
| ``scale_unit``                | scale features before PCA            |
+-------------------------------+--------------------------------------+
| ``ncp``                       | number of principal components to    |
|                               | calculate                            |
+-------------------------------+--------------------------------------+
| ``ylim``                      | y-axis limits on scree plot          |
+-------------------------------+--------------------------------------+
| ``verbose``                   | verobsity                            |
+-------------------------------+--------------------------------------+
| ``show_plot``                 | show plot                            |
+-------------------------------+--------------------------------------+
| ``return_plot``               | return ggplot object                 |
+-------------------------------+--------------------------------------+
| ``save_plot``                 | directly save the plot [boolean]     |
+-------------------------------+--------------------------------------+
| ``save_param``                | list of saving parameters from       |
|                               | all_plots_save_function()            |
+-------------------------------+--------------------------------------+
| ``default_save_name``         | default save name for saving, don’t  |
|                               | change, change save_name in          |
|                               | save_param                           |
+-------------------------------+--------------------------------------+
| ``...``                       | additional arguments to pca          |
|                               | function, see                        |
|                               | ```runPCA`` <#runpca>`__             |
+-------------------------------+--------------------------------------+

Details
-------

Screeplot works by plotting the explained variance of each individual PC
in a barplot allowing you to identify which PC provides a significant
contribution (a.k.a ‘elbow method’). list() Screeplot will use an
available pca object, based on the parameter ‘name’, or it will create
it if it’s not available (see ```runPCA`` <#runpca>`__ )

Value
-----

ggplot object for scree method
