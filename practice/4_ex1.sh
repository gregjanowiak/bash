#!/bin/bash

file_count() {
  local COUNT=$(ls -1 | wc -l)

  echo "File count in pwd: " $COUNT
}

file_count
