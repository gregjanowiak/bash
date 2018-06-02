#!/bin/bash

case $1 in
  start)
    /tmp/sleepwalkingserver &
    ;;
  stop)
    kill $(cat /tmp/sleep­walking­server.pid)
    ;;
esac
