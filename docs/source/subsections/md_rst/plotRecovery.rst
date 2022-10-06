============
plotRecovery
============

:Date: 2022-10-06

Description
===========

Plots recovery plot to compare ligand-receptor rankings from spatial and
expression information

Usage
=====

.. code:: r

   plotRecovery(
     gobject,
     combCC,
     expr_rnk_column = "exprPI_rnk",
     spat_rnk_column = "spatPI_rnk",
     ground_truth = c("spatial", "expression"),
     show_plot = NA,
     return_plot = NA,
     save_plot = NA,
     save_param = list(),
     default_save_name = "plotRecovery"
   )

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``gobject``                   | giotto object                        |
+-------------------------------+--------------------------------------+
| ``combCC``                    | combined communinication scores from |
|                               | ```combCCcom`` <#combcccom>`__       |
+-------------------------------+--------------------------------------+
| ``expr_rnk_column``           | column with expression rank          |
|                               | information to use                   |
+-------------------------------+--------------------------------------+
| ``spat_rnk_column``           | column with spatial rank information |
|                               | to use                               |
+-------------------------------+--------------------------------------+
| ``ground_truth``              | what to consider as ground truth     |
|                               | (default: spatial)                   |
+-------------------------------+--------------------------------------+
| ``show_plot``                 | show plots                           |
+-------------------------------+--------------------------------------+
| ``return_plot``               | return plotting object               |
+-------------------------------+--------------------------------------+
| ``save_plot``                 | directly save the plot [boolean]     |
+-------------------------------+--------------------------------------+
| ``save_param``                | list of saving parameters from       |
|                               | ```all_plots_save_f                  |
|                               | unction`` <#allplotssavefunction>`__ |
+-------------------------------+--------------------------------------+
| ``default_save_name``         | default save name for saving, don’t  |
|                               | change, change save_name in          |
|                               | save_param                           |
+-------------------------------+--------------------------------------+

Value
=====

ggplot
