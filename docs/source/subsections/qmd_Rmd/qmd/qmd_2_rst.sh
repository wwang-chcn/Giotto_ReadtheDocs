#!/bin/bash
ymd=$(date +%F)
for f in /mnt/c/Users/matto/Documents/BMC/R_code/Giotto_ReadtheDocs/docs/source/subsections/qmd_Rmd/qmd/*.qmd; do
  filename=$(basename "$f" .qmd)
  sed -i "1s/^/--- \ntitle: $filename \nformat: rst \ndate: ymd \n--- \n/" $filename.qmd
  quarto.exe render $filename.qmd --to rst
done

#sed: can't read 1s/^/--- \ntitle: DT_removeNA \nformat: rst \ndate: ymd \n --- \n/DT_removeNA.qmd: No such file or directory
#ERROR: No valid input files passed to render