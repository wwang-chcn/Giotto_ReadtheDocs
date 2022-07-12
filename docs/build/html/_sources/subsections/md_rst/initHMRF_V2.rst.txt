
``initHMRF_V2``
===================

initHMRF_V2

Description
-----------

Run initialzation for HMRF model

Usage
-----

.. code-block:: r

   initHMRF_V2(
     gobject,
     expression_values = c("scaled", "normalized", "custom"),
     spatial_network_name = "Delaunay_network",
     use_spatial_genes = c("binSpect", "silhouetteRank"),
     gene_samples = 500,
     gene_sampling_rate = 2,
     gene_sampling_seed = 10,
     gene_sampling_from_top = 2500,
     filter_method = c("none", "elbow"),
     user_gene_list = NULL,
     use_score = FALSE,
     hmrf_seed = 100,
     k = 10,
     tolerance = 1e-05,
     zscore = c("none", "rowcol", "colrow"),
     nstart = 1000,
     factor_step = 1.05
   )

Arguments
---------

.. list-table::
   :header-rows: 1

   * - Argument
     - Description
   * - ``gobject``
     - giotto object
   * - ``expression_values``
     - expression values to use
   * - ``spatial_network_name``
     - name of spatial network to use for HMRF
   * - ``use_spatial_genes``
     - which of Giotto's spatial genes to use
   * - ``gene_samples``
     - number of spatial gene subset to use for HMRF
   * - ``gene_sampling_rate``
     - parameter (1-50) controlling proportion of gene samples from different module when sampling, 1 corresponding to equal gene samples between different modules; 50 corresponding to gene samples proportional to module size.
   * - ``gene_sampling_seed``
     - random number seed to sample spatial genes
   * - ``gene_sampling_from_top``
     - total spatial genes before sampling
   * - ``filter_method``
     - filter genes by top or by elbow method, prior to sampling
   * - ``user_gene_list``
     - user-specified genes (optional)
   * - ``use_score``
     - use score as gene selection criterion (applies when use_spatial_genes=silhouetteRank)
   * - ``hmrf_seed``
     - random number seed to generate initial mean vector of HMRF model
   * - ``k``
     - number of HMRF domains
   * - ``tolerance``
     - error tolerance threshold
   * - ``nstart``
     - number of Kmeans initializations from which to select the best initialization
   * - ``factor_step``
     - dampened factor step


Details
-------

There are two steps to running HMRF. This is the first step, the initialization.
 First, user specify which of Giotto's spatial genes to run, through use_spatial_genes.
 Spatial genes have been stored in the gene metadata table. A first pass of genes will filter genes
 that are not significantly spatial, as determined by filter_method. If filter_method is none,
 then top 2500 (gene_sampling_from_top) genes ranked by pvalue are considered spatial.
 If filter_method is elbow, then the exact cutoff is determined by the elbow in the
 -log10Pvalue vs. gene rank plot.
 Second, the filtered gene set is subject to sampling to select 500
 (controlled by gene_samples) genes for running HMRF.
 Third, once spatial genes are finalized, we are ready to initialize HMRF.
 This consists of running a K-means algorithm to determine initial centroids (nstart, hmrf_seed) of HMRF.
 The initialization is then finished.
 This function returns a list containing y (expression), nei (neighborhood structure), numnei (number of neighbors), blocks (graph colors), damp (dampened factor), mu (mean), sigma (covariance), k, genes, edgelist. This information is needed for the second step, doHMRF.

Value
-----

A list (see details)
