#!/bin/bash
#loops through etc/passwd by line
#puts a number and a colon before each line, e.g. "1: "

#while loop that reads each line of file, adds prefixes
line_num=1
while read line
do
  echo "$line_num: $line"
  ((line_num++))
done < /etc/passwd
