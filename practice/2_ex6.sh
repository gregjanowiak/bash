#!/bin/bash

# ex6
#read -p "Enter a filename: " FILENAME

# ex7
#FILENAME=$1

# ex8 added for loop and infinite arguments
for FILENAME in $@
do
  echo "You entered: ${FILENAME}"

  if test -e $FILENAME # file exists
  then
    if test -f $FILENAME
    then
      echo "it's a regular file"
    elif test -d $FILENAME
    then
      echo "it's a directory"
    else
      echo "it's something"
    fi
  else
    echo "it doesn't exist"
  fi
done
