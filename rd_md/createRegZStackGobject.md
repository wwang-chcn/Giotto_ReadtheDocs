# `createRegZStackGobject`

createRegZStackGobject


## Description

create registered z stacked 3D gobject. Images not supported


## Usage

```r
createRegZStackGobject(
  expression_list,
  spatlocs_list,
  xvals,
  yvals,
  scalefactor = 1,
  transformXML,
  z_vals,
  instructions = NULL
)
```


## Arguments

Argument      |Description
------------- |----------------
`expression_list`     |     list of expression values to use
`spatlocs_list`     |     list of spatlocs to use
`xvals`     |     x value spatial input
`yvals`     |     y value spatial input
`scalefactor`     |     scale spatial coords to pixel coords
`transformXML`     |     transformation files to use
`z_vals`     |     z values to use in z stacking. In order of expression_list and spatloc_list.
`instructions`     |     instructions for Giotto processing


