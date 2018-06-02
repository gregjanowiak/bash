#!/bin/bash
#displays a random number to the screen, generates a syslog message

echo $RANDOM
logger -s -t 8ex1 -p user.info "random number generated"
