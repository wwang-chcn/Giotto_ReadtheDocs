#!/bin/bash

numargs=$#
if [ "$numargs" != "1" ]
then
  echo "Usage:"
  echo "./refresh_rst.sh /path/to/rst/files/"
  echo "Please try again and provide a directory as an argument."
  exit 1
fi

echo "Refreshing dates on all .rst files in directory $1"

ymd=$(date +%F)
for f in $1*.rst; do
  filename=$(basename "$f" .rst)
  sed "/:Date:/d" $filename.rst > out.rst
  sed -i "5s/^/:Date: $ymd\n/" out.rst
  mv out.rst $filename.rst
done