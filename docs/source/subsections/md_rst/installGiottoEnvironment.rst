========================
installGiottoEnvironment
========================

:Date: 1/19/23

https://github.com/drieslab/Giotto/tree/suite/R/python_environment.R#L277


``installGiottoEnvironment``
============================

installGiottoEnvironment

Description
-----------

Installs a giotto environment

Usage
-----

.. code:: r

   installGiottoEnvironment(
     packages_to_install = c("pandas==1.5.1", "networkx==2.8.8", "python-igraph==0.10.2",
       "leidenalg==0.9.0", "python-louvain==0.16", "python.app==1.4", "scikit-learn==1.1.3"),
     python_version = "3.10.2",
     force_miniconda = FALSE,
     force_environment = FALSE,
     verbose = TRUE
   )

Arguments
---------

+-------------------------------+--------------------------------------+
| Argument                      | Description                          |
+===============================+======================================+
| ``packages_to_install``       | all python modules (packages) that   |
|                               | should be installed for Giotto to    |
|                               | work                                 |
+-------------------------------+--------------------------------------+
| ``python_version``            | python version to use within the     |
|                               | giotto conda environment             |
+-------------------------------+--------------------------------------+
| ``force_miniconda``           | force reinstallation of miniconda    |
+-------------------------------+--------------------------------------+
| ``force_environment``         | force reinstallation of the giotto   |
|                               | environment                          |
+-------------------------------+--------------------------------------+
| ``verbose``                   | be verbose                           |
+-------------------------------+--------------------------------------+

Details
-------

This function will install a local giotto environment using the
miniconda system as implemented by reticulate. Once this giotto
environment is installed it will be automatically detected when you run
the Giotto toolbox. If you want to use your own python path then you can
set the python_path in the
```createGiottoInstructions`` <#creategiottoinstructions>`__ and provide
the instructions to the ```createGiottoObject`` <#creategiottoobject>`__
function.

By default, Python v3.10.2 will be used with the following python
modules for Giotto Suite implementations: list(“:raw-latex:`\n`�, � -
pandas==1.5.1:raw-latex:`\n`“,� - networkx==2.8.8:raw-latex:`\n`“,� -
python-igraph==0.10.2:raw-latex:`\n`“,� -
leidenalg==0.9.0:raw-latex:`\n`“,� -
python-louvain==0.16:raw-latex:`\n`“,� -
python.app==1.4:raw-latex:`\n`“,� - scikit-learn==1.1.3:raw-latex:`\n`“)

The giotto environment can be custom installed by changing the
python_version parameter and module versions in the packages_to_install
parameter.

For example, this giotto environment works as well, and was the default
environment status for past releases of Giotto. Python v3.6
list(“:raw-latex:`\n`�, � - pandas==1.1.5:raw-latex:`\n`“,� -
networkx==2.6.3:raw-latex:`\n`“,� -
python-igraph==0.9.6:raw-latex:`\n`“,� -
leidenalg==0.8.7:raw-latex:`\n`“,� -
python-louvain==0.15:raw-latex:`\n`“,� - python.app==2 # macOS
only:raw-latex:`\n`“,� - scikit-learn==0.24.2:raw-latex:`\n`“)

Value
-----

installs a giotto environment using the reticulate miniconda system

Examples
--------

.. code:: r

   # this command will install r-miniconda
   # and a giotto environment with all necessary python modules
   installGiottoEnvironment()
