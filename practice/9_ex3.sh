#!/bin/bash
#takes input and does one of five things
#show disk usage (1)
#show uptime (2)
#show users logged in (3)
#show error message (invalid input)
#quit (q)

read -p $'1)disk usage\n2)uptime\n3)users logged in\nq)quit\n\n' choice

while true
do
  case $choice in
    1)
      df
      echo "Goodbye"
      exit 0
      ;;
    2)
      uptime
      echo "Goodbye"
      exit 0
      ;;
    3)
      users
      echo "Goodbye"
      exit 0
      ;;
    q)
      echo "Goodbye"
      exit 0
      ;;
    *)
      echo "invalid input"
      break
      ;;
  esac
done
