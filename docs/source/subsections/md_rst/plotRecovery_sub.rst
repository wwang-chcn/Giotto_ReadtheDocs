================
plotRecovery_sub
================

:Date: 2022-10-06

Description
===========

Plots recovery plot to compare ligand-receptor rankings from spatial and
expression information

Usage
=====

.. code:: r

   plotRecovery_sub(combCC, first_col = "LR_expr_rnk", second_col = "LR_spat_rnk")

Arguments
=========

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``combCC``                    | combined communinication scores from |
|                               | ```combCCcom`` <#combcccom>`__       |
+-------------------------------+--------------------------------------+
| ``first_col``                 | first column to use                  |
+-------------------------------+--------------------------------------+
| ``second_col``                | second column to use                 |
+-------------------------------+--------------------------------------+
