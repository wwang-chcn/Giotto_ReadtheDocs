=============
Configuration
=============

:Date: 2022-09-09

Configuring the Python environment
==================================

Giotto Suite contains functions that use Python. Utilizing the
functionality of the
`reticulate <https://rstudio.github.io/reticulate/>`__ package and
miniconda, Giotto Suite creates a Python environment with the required
Python packages installed. Once this function
`installGiottoEnvironment <../reference/installGiottoEnvironment.html>`__
has been run, Giotto Suite will automatically default to this Python
environment.

.. container:: cell

   .. code:: r

      library(Giotto)
      already_installed <- checkGiottoEnvironment()
      if(!already_installed){
        installGiottoEnvironment()
      }

The function
`installGiottoEnvironment <../reference/installGiottoEnvironment.html>`__
has two particular arguments that are most useful for re-installation,
if necessary:

-  **force_miniconda**: force re-installation of miniconda, default is
   FALSE
-  **force_environment**: force re-installation of the Giotto
   environment, default is FALSE

**Note that, by default,**
`installGiottoEnvironment <../reference/installGiottoEnvironment.html>`__
**installs a specific version of Python and each required package. At
the time of this tutorial’s creation, the following versions are
utilized:**

-  `Python <https://www.python.org/>`__ 3.6
-  `pandas <https://pandas.pydata.org/>`__ 1.1.5
-  `networkx <https://networkx.org/>`__ 2.6.3
-  `python-igraph <https://igraph.org/python/>`__ 0.9.6
-  `leidenalg <https://leidenalg.readthedocs.io/en/latest/>`__ 0.8.7
-  `python-louvain <https://python-louvain.readthedocs.io/en/latest/>`__
   0.15
-  `python.app <https://github.com/conda-forge/python.app-feedstock>`__
   (Mac only) 2
-  `scikit-learn <https://scikit-learn.org/stable/>`__ 0.24.2
-  `smfishHmrf <https://pypi.org/project/smfishHmrf/>`__ 1.3.3

Customizing the Giotto Installation
===================================

If different versions of Python or Python packages are necessary for
your analysis, Giotto Suite may be installed accordingly. Simply specify
the desired version numbers for each package within a vector, and
provide that vector to the *packages_to_install* argument within
**installGiottoEnvironment**.

.. container:: cell

   .. code:: r

      # Example installation with custom Python package versions
      new_pkg_versions <- c('pandas==1.4.4',
                            'networkx==2.6.3',
                            'python-igraph==0.9.6',
                            'leidenalg==0.8.7',
                            'python-louvain==0.15',
                            'scikit-learn==0.24.2',
                            'python.app==2')

      # If altering the original Giotto Installation is not desired, DO NOT
      # run the following command as written.
      installGiottoEnvironment(packages_to_install = new_pkg_versions,
                               python_version = '3.8') # Default is 3.6

Using a non-default Conda environment
=====================================

To use a specific Conda environment, a path to a system-specific Python
executable within a Conda environment must be provided to
`createGiottoInstructions <../reference/createGiottoInstructions.html>`__.
This will direct reticulate to activate and utilize that environment
within that R session. See `How to Create a Giotto
Object <./getting_started_gobject.html>`__ for more details.

**Note that the installation of all aforementioned Python packages is
necessary for the full functionality of Giotto Suite**.

Package Accessibility
=====================

Giotto makes use of the following Python packages (and their respective
dependencies) for full functionality:

-  `pandas <https://pandas.pydata.org/>`__
-  `networkx <https://networkx.org/>`__
-  `python-igraph <https://igraph.org/python/>`__
-  `leidenalg <https://leidenalg.readthedocs.io/en/latest/>`__
-  `python-louvain <https://python-louvain.readthedocs.io/en/latest/>`__
-  `python.app <https://github.com/conda-forge/python.app-feedstock>`__
   (Mac only)
-  `scikit-learn <https://scikit-learn.org/stable/>`__
-  `smfishHmrf <https://pypi.org/project/smfishHmrf/>`__

Here is a brief troubleshooting workflow to investigate if
`reticulate <https://rstudio.github.io/reticulate/>`__ can access them.

*Note that “community” and “sklearn” are aliases of “python-louvain” and
“scikit-learn”, respectively.*

.. container:: cell

   .. code:: r

      # Creating Giotto Instructions without specifying a Python path will make 
      # reticulate activate the default Giotto environment. 
      default_instrs <- createGiottoInstructions()
      # Extract python path information
      default_python_path <- default_instrs$python_path
      # Make reticulate iteratively check for the packages
      pkg_check <- function(){
        py_pkgs = c('pandas','networkx', 'igraph', 'leidenalg','community','sklearn','python.app')
        py_pkg_error = character()
        test_availability = TRUE
        
        for (i in py_pkgs){
          if(i == 'python.app' & Sys.info()[['sysname']] != "Darwin"){
            # If the machine OS is not OSX (Mac), break out of the loop
            # Otherwise, also check for python.app
            break
          }
          test_availability <- reticulate::py_module_available(i)
          if(!test_availability) {py_pkg_error <- c(py_pkg_error,i)}
        }
        
        if(test_availability){
          cat('All Python packages for Giotto are accessible at environment:\n', default_python_path)
        }else{
          for (x in py_pkg_error) cat(x,'was not found within environment:\n',default_python_path,'\n\n')
        }
        
        return(py_pkg_error)
      }
      pkg_check()

**Troubleshooting Packages not Found**

In the event that packages are inaccessible in the default installation
of the Giotto miniconda environment, one troubleshooting method is
provided here.

.. container:: cell

   .. code:: r

      # Restart the R session, while maintaining workspace variables.
      # If using RStudio, the following command will do exactly that:
      .rs.restartR()
      # Direct reticulate to use Python within the Giotto Environment
      reticulate::use_python(default_python_path)
      # Check if packages exist again. Ensure function from above code block is defined.
      missing_packages <- pkg_check()
      retry_install <- length(missing_packages) > 0
      if(retry_install){
        
        # Attempt to reinstall all packages.
        pkgs_w_versions <- c('pandas==1.1.5',
                           'networkx==2.6.3',
                           'python-igraph==0.9.6',
                           'leidenalg==0.8.7',
                           'python-louvain==0.15',
                           'scikit-learn==0.24.2',
                           'python.app==2')
        
        py_pkgs = c('pandas','networkx', 
                    'igraph', 'leidenalg',
                    'community','sklearn','python.app')
        
        if(Sys.info()[['sysname']] != "Darwin"){
          pkgs_w_versions = pkgs_w_versions[!grepl(pattern = 'python.app', x = pkgs_w_versions)]
          py_pkgs = py_pkgs[!grepl(pattern = 'python.app', x = py_pkgs)]
        }
        
        env_location <- reticulate::py_discover_config()$pythonhome
        partial_path_to_conda <- paste0(reticulate::miniconda_path(),'/envs/giotto_env')
        
        if(.Platform[['OS.type']] == 'unix') {
          
          conda_full_path = paste0(partial_conda_path,'/','bin/conda')
          
          # Remove all previous installations
          reticulate::conda_remove(envname = env_location,
                                   packages = py_pkgs,
                                   conda = conda_full_path)
          
          # Reinstall
          reticulate::conda_install(packages = pkgs_w_versions,
                                    envname = env_location,
                                    method = 'conda',
                                    conda = conda_full_path,
                                    python_version = 3.6)
          
          # Reinstall smfishhmrf with pip
          reticulate::conda_install(packages = 'smfishhmrf==1.3.3',
                                    envname = env_location,
                                    method = 'conda',
                                    conda = conda_full_path,
                                    pip = TRUE,
                                    python_version = 3.6)
        }
        else if(.Platform[['OS.type']] == 'windows'){
          conda_full_path = paste0(partial_conda_path,'/','condabin/conda.bat')
          
          # Remove all previous installations
          reticulate::conda_remove(envname = env_location,
                                   packages = py_pkgs,
                                   conda = conda_full_path)
          
          # Reinstall
          reticulate::conda_install(packages = pkgs_w_versions,
                                    envname = env_location,
                                    method = 'conda',
                                    conda = conda_full_path,
                                    python_version = 3.6,
                                    channel = c('conda-forge', 'vtraag'))
          
          # Reinstall smfishhmrf with pip
          reticulate::conda_install(packages = 'smfishhmrf==1.3.3',
                                    envname = env_location,
                                    method = 'conda',
                                    conda = conda_full_path,
                                    pip = TRUE,
                                    python_version = 3.6)
          
        }
      }

If you are still experiencing errors, here are some additional possible
solutions:

-  Remove and attempt to re-install the Giotto environment.

   -  Run
      `removeGiottoEnvironment <../reference/removeGiottoEnvironment.html>`__,
      then terminate R.
   -  Open a completely new R session, and run
      `installGiottoEnvironment <../reference/installGiottoEnvironment.html>`__

-  Post to an issue to the Giotto GitHub page
   `here <https://github.com/RubD/Giotto>`__.

   -  Please include the version numbers of R, Giotto, and the OS in use
      at the time of the issue.

-  See `FAQ <./suite/docs/source/faqs.rst>`__.
