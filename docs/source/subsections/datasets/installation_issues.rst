===================
installation_issues
===================

:Date: 2022-09-16

0. First time R package installation
====================================

Package development prerequisites
---------------------------------

If this is the first time you build and install an R package you can
follow this
`link <https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites>`__,
which has simple installation instructions for Windows, Mac OSX and
Linux.

To specifically install the command-line tools of Xcode for Mac OSX you
might also need to run this line in terminal:

.. code:: bash

   xcode-select --install

 

1. Python manual installation
=============================

Install with pip in python 3
----------------------------

For OSX, Windows or Linux:

.. code:: bash

   pip3 install pandas python-igraph networkx python-louvain leidenalg scikit-learn smfishHmrf

Conda install
-------------

If pip install does not work, try installing them within a conda `conda
environment <https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-with-commands>`__.
Something like this might work, see also this
`link <https://heartbeat.fritz.ai/creating-python-virtual-environments-with-conda-why-and-how-180ebd02d1db>`__

1. create yaml file (e.g. environment.yml) with the following information:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

   name: giotto_env
   channels:
    — defaults
   dependencies:
    — pip=3.4
    — pandas
    — networkx
    - python-igraph
    - leidenalg
    - python-louvain
    - python.app (!!only for OSX!!)
    - scikit-learn
   prefix: /Users/your_username/anaconda3/envs/giotto_env

2. create conda environment based on yaml file:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code:: python

   conda env create -f environment.yml

3. Use the path to this environment when you create the Giotto instructions or Giotto object
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

for OSX:

::

   /Users/your_username/anaconda3/envs/giotto_env/bin/pythonw

for linux:

::

   /Users/your_username/anaconda3/envs/giotto_env/bin/python

for windows:

::

   /Users/your_username/anaconda3/envs/giotto_env/python.exe

 

2. errors on MacOS
==================

| Some of the errors outlined below might arise because of issues with
  building Giotto from source.
| The Giotto branch **cless** is a version of Giotto without C++ code,
  which should fix many of the installation errors.

.. container:: cell

   .. code:: r

      remotes::install_github("drieslab/Giotto@cless") 

2.1 issue 1: clang error
------------------------

If you see this error on your MacOS:

.. code:: bash

   clang: error: unsupported option ‘-fopenmp’

You can install another clang and point R to use that clang, which
supports the -fopenmp paramter. This solution was provided on
`stackoverflow <https://stackoverflow.com/questions/43595457/alternate-compiler-for-installing-r-packages-clang-error-unsupported-option>`__

1. Install llvm on your mac

.. code:: bash

   brew install llvm

2. create a Makevars file

.. code:: bash

   touch ~/.R/Makevars

3. Add these lines to the Makevars file

.. container:: cell

   .. code:: bash

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

2.2 issue 2: clang error
------------------------

If you see this error on your MacOS:

.. container:: cell

   .. code:: bash

      Error message: 
      ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
      ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
      ld: library not found for -lgfortran
      clang-9: error: linker command failed with exit code 1 (use -v to see invocation)

solution: Installing the latest version of gofortran.
https://github.com/fxcoudert/gfortran-for-macOS/releases/download/8.2/gfortran-8.2-Mojave.dmg

Reference:
https://stackoverflow.com/questions/35999874/mac-os-x-r-error-ld-warning-directory-not-found-for-option
“I am having Mac OS Catalina and in my case installation of Homebrew,
the newest gcc and Gfortran 8.2.0 solved the issue.” – Magda Orzechowska
“This worked for me in Mac OS Catalina as well! I used the gfortran 8.2
Mojave installation github.com/fxcoudert/gfortran-for-macOS/releases” –
Danny

2.3 issue 3 (R 3.6.3 and MacOS Catalina)
----------------------------------------

If you use the latest MacOS ‘Catalina’ and the latest R version 3.6.3
then you need to install Clang 7.0.0 and GNU Fortran 6.1 as per
`instructions <https://cran.rstudio.com/bin/macosx/>`__.

Additionally, you might have to specify some flags in “~/.R/Makevars”

.. container:: cell

   .. code:: bash

      # clang: start
      CFLAGS=-isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
      CCFLAGS=-isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
      CXXFLAGS=-isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
      CPPFLAGS=-isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
      # clang: end

We hope that these issues will be resolved soon.

3. ‘Make’ not found error on windows
====================================

If you encounter this error:

.. container:: cell

   .. code:: r

      Error in system(cmd) : (converted from warning) ‘make’ not found

| Solution:
| Install the necessary `package development
  tools <https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites>`__.

.. container:: cell

   .. code:: r

      ## make sure Rtools is visible (from within R)
      ## you can set the paths manually
      Sys.setenv(PATH = paste("C:/Rtools/bin","C:/Rtools/mingw_64/bin", Sys.getenv("PATH"), sep=";"))
      Sys.setenv(BINPREF = "C:/Rtools/mingw_$(WIN)/bin/")

4. Error converted from warning
===============================

If you encounter this or similar error:

.. container:: cell

   .. code:: r

      Error: Failed to install 'Giotto' from GitHub:
        (converted from warning) ...

-  make sure Rtools is installed, see point 3

.. container:: cell

   .. code:: r

      ## avoid converting warnings to errors by setting this environment variable to true (from within R)
      Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS"=TRUE)

      library(devtools) # if not installed do install.package('devtools')
      library(remotes) # if not installed do install.package('remotes')
      remotes::install_github("drieslab/Giotto", build_vignettes = F)
