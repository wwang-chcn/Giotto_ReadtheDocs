calculateHVF
------------

.. link-button:: https://github.com/drieslab/Giotto/tree/suite/R/variable_genes.R#L190
		:type: url
		:text: View Source Code
		:classes: btn-outline-primary btn-block

Last Updated: |today|

Description
~~~~~~~~~~~

compute highly variable features

Usage
~~~~~

::

   calculateHVF(
     gobject,
     spat_unit = NULL,
     feat_type = NULL,
     expression_values = c("normalized", "scaled", "custom"),
     method = c("cov_groups", "cov_loess", "var_p_resid"),
     reverse_log_scale = FALSE,
     logbase = 2,
     expression_threshold = 0,
     nr_expression_groups = 20,
     zscore_threshold = 1.5,
     HVFname = "hvf",
     difference_in_cov = 0.1,
     var_threshold = 1.5,
     var_number = NULL,
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "HVFplot",
     return_gobject = TRUE
   )

Arguments
~~~~~~~~~

+-----------------------------------+-----------------------------------+
| ``gobject``                       | giotto object                     |
+-----------------------------------+-----------------------------------+
| ``spat_unit``                     | spatial unit                      |
+-----------------------------------+-----------------------------------+
| ``feat_type``                     | feature type                      |
+-----------------------------------+-----------------------------------+
| ``expression_values``             | expression values to use          |
+-----------------------------------+-----------------------------------+
| ``method``                        | method to calculate highly        |
|                                   | variable features                 |
+-----------------------------------+-----------------------------------+
| ``reverse_log_scale``             | reverse log-scale of expression   |
|                                   | values (default = FALSE)          |
+-----------------------------------+-----------------------------------+
| ``logbase``                       | if reverse_log_scale is TRUE,     |
|                                   | which log base was used?          |
+-----------------------------------+-----------------------------------+
| ``expression_threshold``          | expression threshold to consider  |
|                                   | a gene detected                   |
+-----------------------------------+-----------------------------------+
| ``nr_expression_groups``          | [cov_groups] number of expression |
|                                   | groups for cov_groups             |
+-----------------------------------+-----------------------------------+
| ``zscore_threshold``              | [cov_groups] zscore to select hvg |
|                                   | for cov_groups                    |
+-----------------------------------+-----------------------------------+
| ``HVFname``                       | name for highly variable features |
|                                   | in cell metadata                  |
+-----------------------------------+-----------------------------------+
| ``difference_in_cov``             | [cov_loess] minimum difference in |
|                                   | coefficient of variance required  |
+-----------------------------------+-----------------------------------+
| ``var_threshold``                 | [var_p_resid] variance threshold  |
|                                   | for features for var_p_resid      |
|                                   | method                            |
+-----------------------------------+-----------------------------------+
| ``var_number``                    | [var_p_resid] number of top       |
|                                   | variance features for var_p_resid |
|                                   | method                            |
+-----------------------------------+-----------------------------------+
| ``show_plot``                     | show plot                         |
+-----------------------------------+-----------------------------------+
| ``return_plot``                   | return ggplot object              |
+-----------------------------------+-----------------------------------+
| ``save_plot``                     | directly save the plot [boolean]  |
+-----------------------------------+-----------------------------------+
| ``save_param``                    | list of saving parameters from    |
|                                   | ``all_plots_save_function``       |
+-----------------------------------+-----------------------------------+
| ``default_save_name``             | default save name for saving,     |
|                                   | don't change, change save_name in |
|                                   | save_param                        |
+-----------------------------------+-----------------------------------+
| ``return_gobject``                | boolean: return giotto object     |
|                                   | (default = TRUE)                  |
+-----------------------------------+-----------------------------------+

Details
~~~~~~~

Currently we provide 2 ways to calculate highly variable genes:

| **1. high coeff of variance (COV) within groups:**
| First genes are binned (*nr_expression_groups*) into average
  expression groups and the COV for each feature is converted into a
  z-score within each bin. Features with a z-score higher than the
  threshold (*zscore_threshold*) are considered highly variable.

| **2. high COV based on loess regression prediction:**
| A predicted COV is calculated for each feature using loess regression
  (COV~log(mean expression)) Features that show a higher than predicted
  COV (*difference_in_cov*) are considered highly variable.

Value
~~~~~

giotto object highly variable features appended to feature metadata
(fDataDT)
