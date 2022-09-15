##################################
Solutions to Installation Errors
##################################

.. _error_on_mac: 

************************
Errors on MacOS
************************
Some of the errors outlined below might arise because of issues with building Giotto from source.
The Giotto branch **cless** is a version of Giotto without C++ code, which should fix many of the installation errors.

.. code-block:: 

    remotes::install_github("RubD/Giotto@cless") 

.. _package_not_found_mac:

Issue 1: Troubleshooting Packages not Found
========================

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
      
.. _clang_error_mac:

Issue 2: Clang Error
========================

If you see this error on your MacOS:

.. code-block::

    clang: error: unsupported option ‘-fopenmp’

You can install another clang and point R to use that clang, which supports the -fopenmp paramter. This solution was provided `on stackoverflow <https://stackoverflow.com/questions/43595457/alternate-compiler-for-installing-r-packages-clang-error-unsupported-option>`_.

1. Install llvm on your mac

.. code-block:: 

    brew install llvm

2. Create a Makevars File

.. code-block:: 

    touch ~/.R/Makevars


3. Add these lines to the Makevars File

.. code-block:: 

    # comment out first line 'CC= ... if there are errors with compiling a package
    CC=/usr/local/opt/llvm/bin/clang -fopenmp
    CXX=/usr/local/opt/llvm/bin/clang++

    # Also potentially CXX11 (for C++11 compiler)
    CXX11=/usr/local/opt/llvm/bin/clang++

    # -O3 should be faster than -O2 (default) level optimisation ..
    CFLAGS=-g -O3 -Wall -pedantic -std=gnu99 -mtune=native -pipe
    CXXFLAGS=-g -O3 -Wall -pedantic -std=c++11 -mtune=native -pipe
    LDFLAGS=-L/usr/local/opt/gettext/lib -L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib
    CPPFLAGS=-I/usr/local/opt/gettext/include -I/usr/local/opt/llvm/include

Issue 3: Clang Error
=======================
If you see this error on your MacOS:

.. code-block::

    Error message: 
    ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
    ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
    ld: library not found for -lgfortran
    clang-9: error: linker command failed with exit code 1 (use -v to see invocation)

**Solution**: Install the latest version of gofortran: https://github.com/fxcoudert/gfortran-for-macOS/releases/download/8.2/gfortran-8.2-Mojave.dmg

`Solution Reference Source: <https://stackoverflow.com/questions/35999874/mac-os-x-r-error-ld-warning-directory-not-found-for-option>`_

*“I am having Mac OS Catalina and in my case installation of Homebrew, the newest gcc and Gfortran 8.2.0 solved the issue.” – Magda Orzechowska*

*“This worked for me in Mac OS Catalina as well! I used the gfortran 8.2 Mojave installation github.com/fxcoudert/gfortran-for-macOS/releases” – Danny*

.. _R_363_and_catalina_error: 

.. _error_on_windows:

************************
Errors on Windows
************************

.. _make_not_found: 

Issue 1: ‘Make’ not found error on windows
============================================
If you encounter this error:

.. code-block::

	Error in system(cmd) : (converted from warning) ‘make’ not found

**Solution:** `Install the necessary package development tools. <https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites>`_

.. code-block::

	## make sure Rtools is visible (from within R)
	## you can set the paths manually
	Sys.setenv(PATH = paste("C:/Rtools/bin","C:/Rtools/mingw_64/bin", Sys.getenv("PATH"), sep=";"))
	Sys.setenv(BINPREF = "C:/Rtools/mingw_$(WIN)/bin/")

.. _error_converted_warning: 

Issue 2: Error Converted from Warning
============================================
If you encounter this or similar error:

.. code-block:: 

	Error: Failed to install 'Giotto' from GitHub:
  		(converted from warning) ...

**Solution:** Make sure Rtools is installed

.. code-block:: 

	## avoid converting warnings to errors by setting this environment variable to true (from within R)
	Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS"=TRUE)

	library(devtools) # if not installed do install.package('devtools')
	library(remotes) # if not installed do install.package('remotes')
	remotes::install_github("RubD/Giotto", build_vignettes = F)

.. .. admonition:: Giotto HowTos

   * :ref:`Different ways of subsetting Giotto results? <ways-of-subsetting>`
   * :ref:`How to create global instructions and show or save your created plots? <global-instructions-and-save-plots>`
   * :ref:`Different ways to visualize your spatial data? <visualize-data>`
   * :ref:`How to test and store multiple parameters or analyses? <test-and-store>`
   * :ref:`Visualize spatial data with voronoi plots <voronoi-plots>`
   * :ref:`Working with the Giotto class <giotto-class>`
   * :ref:`Adding and Working with Images in Giotto <working-with-giotto-images>`
    
