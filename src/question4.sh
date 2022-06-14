#!/bin/sh
FOUNDFILES=$(find / . -type f -iname "research.*" 2>/dev/null)
echo "$FOUNDFILES";
ext="${FOUNDFILES##*.}"
echo $ext
if [ "$ext"=="gz" ]
then
  gzip -dk research.gz
 fi

