#!/bin/bash

if [ test -e /etc/shadow ]
then
  echo "Shadow passwords are enabled."
  if [ test -w /etc/shadow ]
  then
    echo "You have permission to write to /etc/shadow"
  else
    echo "You don't have permission to write to /etc/shadow"
  fi
else
  echo "Shadow passwords are not enabled."
fi
