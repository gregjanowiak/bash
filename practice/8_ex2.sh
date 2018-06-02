#!/bin/bash
#generates 3 random numbers, logs if first num is > 10000
#uses a logging function, tag "randomly", include pid

output=($RANDOM $RANDOM $RANDOM)
echo ${output[*]}

logit () {
  local limit=10000

  if [ ${output[0]} -gt $limit ]; then #used -gt bc > wont work in if []
    logger -i -s -t randomly -p user.info "first number greater than 10,000"
  fi
}

logit
