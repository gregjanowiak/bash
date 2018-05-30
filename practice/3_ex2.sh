#!/bin/bash

if test -e $1
then
  test -f $1 && exit 0
  test -d $1 && exit 1
else
  exit 2
fi
