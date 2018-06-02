#!/bin/bash

rename_jpg () {
  local count=0

  for file in *.jpg
  do
    mv "$file" "$(date "+%Y%m%d")"-"$count.jpg"
    ((count++)) #increments count var for multiple files rename
  done
}

cd ~/Documents/bash/practice
rename_jpg
