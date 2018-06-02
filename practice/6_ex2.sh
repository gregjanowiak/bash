#!/bin/bash
#challenge: handle situation where no files of the ext exist in the dir
#man bash and read about nullglob

rename_jpg () {
  local count=0
  #ask user for input and set variables
  read -p "Enter a file extension to rename all files: " extension
  read -p "Enter a prefix for renaming (Press ENTER for datestamp): " prefix

  for file in *.$extension
  do
    if [ -z $prefix ] #if prefix is empty
    then
      echo "Renaming $file to "$(date "+%Y%m%d")"_"$count.jpg""
      mv "$file" $(date "+%Y%m%d")"-"$count.jpg
    else
      echo "Renaming $file to $prefix"_"$count.jpg"
      mv "$file" $prefix"-"$count.jpg
    fi
    ((count++)) #increments count var for multiple files rename
  done
}

cd ~/Documents/bash/practice
rename_jpg
