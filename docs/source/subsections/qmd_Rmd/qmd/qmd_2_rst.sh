#!/bin/bash

numargs=$#
if [ "$numargs" != "1" ]
then
  echo "Usage:"
  echo "./qmd_2_rst.sh /path/to/qmd/files/"
  echo "Please try again and provide a directory as an argument."
  exit 1
fi

echo "Modifying all .qmd files in directory $1 for conversion to .rst"
echo "Note that changes made to .qmd files are permanent."

ymd=$(date +%F)
for f in $1*.qmd; do
  filename=$(basename "$f" .qmd)

  # Delete .qmd file header with function name and intro decsription:
  # i.e. #``createGiottoObject
  #
  #      create a giotto object
  sed "1,4d" $filename.qmd > tmp.qmd
  cat tmp.qmd > $filename.qmd
  rm tmp.qmd

  # FOR MACOS USERS, RUN BELOW
  #sed -i '' "1s/^/--- \ntitle: $filename \nformat: rst \ndate: $ymd \n--- \n/" $filename.qmd
  # FOR WINDOWS USERS, RUN BELOW
  sed -i "1s/^/--- \ntitle: $filename \nformat: rst \ndate: $ymd \n--- \n/" $filename.qmd
  
  quarto.exe render $filename.qmd --to rst

done