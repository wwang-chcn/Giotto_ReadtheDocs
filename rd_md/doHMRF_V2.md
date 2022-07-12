# `doHMRF_V2`

doHMRF_V2


## Description

function to run HMRF model


## Usage

```r
doHMRF_V2(HMRF_init_obj, betas = c(0, 10, 5))
```


## Arguments

Argument      |Description
------------- |----------------
`HMRF_init_obj`     |     return list of initHMRF() function
`betas`     |     a vector of three values: initial beta, beta increment, and number of betas


## Details

This function will run a HMRF model after initialization of HMRF.
 Of note is the beta parameter, the smoothing parameter. We recommend running a range of betas,
 For example, betas=c(0,10,5) will run for the following betas: 0, 10, 20, 30, 40.
 betas=c(0,5,2) will run for betas: 0, 5, 10
 Setting the beta can use the following guideline.
 If number of genes N is 10<N<50, set betas=c(0, 1, 20)
 If 50<N<100, set betas=c(0, 2, 25)
 If 100<N<500, set betas=c(0, 5, 20)
 Returns a list with class, probability, and model log-likelihood value.


## Value

A list (see details)


