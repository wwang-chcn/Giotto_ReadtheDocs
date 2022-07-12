# `removeCellAnnotation`

removeCellAnnotation


## Description

removes cell annotation of giotto object


## Usage

```r
removeCellAnnotation(gobject, columns = NULL, return_gobject = TRUE)
```


## Arguments

Argument      |Description
------------- |----------------
`gobject`     |     giotto object
`columns`     |     names of columns to remove
`return_gobject`     |     boolean: return giotto object (default = TRUE)


## Details

if return_gobject = FALSE, it will return the cell metadata


## Value

giotto object


## Examples

```r
data(mini_giotto_single_cell) # load full mini giotto object

# show cell metadata
pDataDT(mini_giotto_single_cell)

# remove cell_types column
mini_giotto_single_cell = removeCellAnnotation(mini_giotto_single_cell,
columns = 'cell_types')
```


