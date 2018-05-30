#!/bin/bash

if cat /etc/shadow && echo "Command succeeded"
then
  exit 0
else
  echo "Command failed"
  exit 1
fi
