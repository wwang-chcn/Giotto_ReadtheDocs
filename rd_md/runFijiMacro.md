# `fiji`

Find Fiji location


## Description

`fiji` returns path to preferred Fiji executable. list() 
 This function is modified from jimpipeline by jefferislab


## Usage

```r
fiji(fijiPath = NULL)
```


## Arguments

Argument      |Description
------------- |----------------
`fijiPath`     |     manually set filepath to Fiji executable


## Examples

```r
# Path to current Fiji executable
fiji()

# Set path to preferred Fiji executable (this will be remembered)
# you can also set options(giotto.fiji="/some/path")
fiji("/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx")
```


