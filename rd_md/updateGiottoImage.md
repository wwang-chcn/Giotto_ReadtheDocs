# `updateGiottoImage`

updateGiottoImage


## Description

Updates the boundaries of a giotto image attached to a giotto object


## Usage

```r
updateGiottoImage(
  gobject,
  image_name,
  xmax_adj = 0,
  xmin_adj = 0,
  ymax_adj = 0,
  ymin_adj = 0,
  return_gobject = TRUE
)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`image_name`     |     spatial locations
`xmax_adj`     |     adjustment of the maximum x-value to align the image
`xmin_adj`     |     adjustment of the minimum x-value to align the image
`ymax_adj`     |     adjustment of the maximum y-value to align the image
`ymin_adj`     |     adjustment of the minimum y-value to align the image
`return_gobject`     |     return a giotto object


## Value

a giotto object or an updated giotto image if return_gobject = F


