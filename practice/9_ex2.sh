#!/bin/bash
#asks user for num of lines, displays that many lines of etc/passwd

#read user input
read -p "Specify number of lines to read: " line_input
line_num=1

#while loop to read x num of lines from etc/passwd
while read line
do
  if [ $line_num -le $line_input ]; then
    echo "$line_num: $line"
    ((line_num++))
  else
    break
  fi
done < /etc/passwd
