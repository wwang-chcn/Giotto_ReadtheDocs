:orphan:
.. _SubmittingGitHubIssues: 

################################
How to Submit a GitHub Issue
################################

Please read through the information below before submitting your issue to our GitHub page. 
The link to report an issue can be found at the bottom of the page. 

.. .. code-block:: r

    knitr::opts_chunk$set(echo = TRUE, eval = FALSE)


Github Issues Guidelines
==========================

Some Useful Commands
----------------------
It is helpful if you provide any relevant information about the software and Giotto object you are using. See below for some tips to get this information.

What version of R are you using?
''''''''''''''''''''''''''''''''''
.. code-block:: r

    R.version.string

.. code-block:: bash

    R version 4.0.4 (2021-02-15)

What version of Giotto are you using?
''''''''''''''''''''''''''''''''''''''''

.. code-block:: r

    packageVersion("Giotto")

.. code-block:: bash

    2.0.0.9044

Are you using the Giotto environment or your own python path?
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

.. code-block:: r

    # Check Giotto environment
    Giotto:::checkGiottoEnvironment()


.. code-block:: bash

    giotto environment found at 
    /Users/natalie_dr/Library/r-miniconda/envs/giotto_env/bin/pythonw 



Show sequential processing steps/commands in the Giotto object
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

.. code-block:: r

    Giotto:::showProcessingSteps(my_giotto_object)

.. code-block:: bash 

    Processing steps: 
    0_normalize 


Show the structure of the Giotto object
''''''''''''''''''''''''''''''''''''''''''

.. code-block:: r

    str(my_giotto_object, max.level = 3)


.. code-block:: bash 

    Formal class 'giotto' [package "Giotto"] with 20 slots
    ..@ expression         :List of 1
    .. ..$ rna:List of 3
    ..@ expression_feat    : chr "rna"
    ..@ spatial_locs       :List of 1
    .. ..$ raw:Classes ‘data.table’ and 'data.frame':	73655 obs. of  4 variables:
    .. .. ..- attr(*, ".internal.selfref")=<externalptr> 
    ..@ spatial_info       : NULL
    ..@ cell_metadata      :List of 1
    .. ..$ rna:Classes ‘data.table’ and 'data.frame':	73655 obs. of  1 variable:
    .. .. ..- attr(*, ".internal.selfref")=<externalptr> 
    ..@ feat_metadata      :List of 1
    .. ..$ rna:Classes ‘data.table’ and 'data.frame':	161 obs. of  1 variable:
    .. .. ..- attr(*, ".internal.selfref")=<externalptr> 
    ..@ feat_info          : NULL
    ..@ cell_ID            : chr [1:73655] "cell_1" "cell_2" "cell_3" "cell_4" ...
    ..@ feat_ID            :List of 1
    .. ..$ rna: chr [1:161] "Ace2" "Adora2a" "Aldh1l1" "Amigo2" ...
    ..@ spatial_network    : NULL
    ..@ spatial_grid       : NULL
    ..@ spatial_enrichment : NULL
    ..@ dimension_reduction: NULL
    ..@ nn_network         : NULL
    ..@ images             : NULL
    ..@ parameters         :List of 1
    .. ..$ 0_normalize: Named chr [1:13] "my_giotto_object" "standard" "TRUE" "6000" ...
    .. .. ..- attr(*, "names")= chr [1:13] "gobject" "norm_methods" "library_size_norm" "scalefactor" ...
    ..@ instructions       :List of 11
    .. ..$ python_path: chr "/Users/natalie_dr/Library/r-miniconda/envs/giotto_env/bin/pythonw"
    .. ..$ show_plot  : logi TRUE
    .. ..$ return_plot: logi TRUE
    .. ..$ save_plot  : logi FALSE
    .. ..$ save_dir   : chr "/Users/natalie_dr/Desktop/my_giotto/giotto_user_help"
    .. ..$ plot_format: chr "png"
    .. ..$ dpi        : num 300
    .. ..$ units      : chr "in"
    .. ..$ height     : num 9
    .. ..$ width      : num 9
    .. ..$ is_docker  : logi FALSE
    ..@ offset_file        : NULL
    ..@ OS_platform        : chr "unix"
    ..@ join_info          : NULL

Warning Messages
-------------------

Deprecation warning
''''''''''''''''''''''''
.. code-block:: r

    my_giotto_object <- createGiottoObject(raw_exprs = "path/to/expression/data",
                                       spatial_locs = "path/to/spatial/data")


.. code-block:: bash

    Warning message:
    In createGiottoObject(raw_exprs = "/Users/username/path/to/data",  :
        raw_exprs argument is deprecated, use expression argument in the future 

:octicon:`alert` 
:strong:`Solution` The code has still run and your object has been created, but in the future use the following command: 

.. code-block:: r

    my_giotto_object <- createGiottoObject(expression = "path/to/expression/data",
                                       spatial_locs = "path/to/spatial/data")


Errors
----------

Is this an error from Giotto?
''''''''''''''''''''''''''''''

.. code-block:: bash 

    Error in adjustGiottoMatrix(gobject = my_giotto_object, expression_values = c("normalized"): covariate column name(s) were not found in the cell metadata 

:octicon:`alert` 
:strong:`Soltuion` In this case, you would need to check your cell metadata (``my_giotto_object@cell_metadata``) and make appropriate adjustments.

Is this an error from an external package?
''''''''''''''''''''''''''''''''''''''''''''''''

.. code-block:: bash 
    
    Error in methods::as(as.matrix(x[, -1]), "Matrix") : 
    no method or default for coercing "matrix" to "Matrix"

:octicon:`alert` 
:strong:`Solution` Ensure that the Matrix library is loaded:

.. code-block:: r

    library(Matrix)


Some steps before posting an issue
======================================

* Google (or whichever search engine you prefer) the error
* Look up the documentation for the package the error came from


Required information to provide
--------------------------------

* What code/data did you use? (copy-pasted or an example is helpful)
* What did you expect your result to be?
* What was your result?

  * If your result was an error message, please see the category on error messages to determine whether the source was Giotto or an external package.
  
How to create a reproducible example
----------------------------------------
For us to be able to help you at the best of our ability, it's helpful if you can provide a reproducible example. This just means that anyone who reads your GitHub issue should be able to accurately reproduce your error. 

For more information on minimal reproducible examples check out `this link <https://stackoverflow.com/help/minimal-reproducible-example>`__. 

And to see what other people recommend, please check out `this forum <https://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example>`__.

Example of a Good GitHub issue
----------------------------------

* Provide a code example
  
  * Please use the GitHub "insert code" function or wrap your code like so:

.. code-block::

    `x <- "hello world"
    
     print(x)`
     

*If applicable, provide a screenshot of the issue*


> I am having trouble adjusting my Giotto matix. I have inputted the following code: 


.. code-block:: 

    my_giotto_object <- adjustGiottoMatrix(gobject = my_giotto_object, 
                                        expression_values = c('normalized'),
                                        covariate_columns = c('nr_genes',
                                                                'total_expr'))


> I expected that my matrix would be appropriately adjusted, but I got the following error: 

.. code-block:: bash
    
        Error in adjustGiottoMatrix(gobject = my_giotto_object, expression_values = c("normalized"): covariate column name(s) were not found in the cell metadata 


> For more context, I am running R version 4.04 and Giotto version 2.0.0.9044. I can send you the data I used if necessary.

Example of a Bad GitHub issue
----------------------------------

> I am having trouble adjusting my Giotto matrix. My error says that the covariate column name(s) were not found in the cell meta data. What do I do?


:bdg-link-danger:`Report An Issue <https://github.com/RubD/Giotto/issues>`