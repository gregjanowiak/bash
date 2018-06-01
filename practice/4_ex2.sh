#!/bin/bash

file_count() {

  local COUNT=$(cd $1 && ls -1 | wc -l)

  echo "File count in $1: " $COUNT
}

file_count $1
