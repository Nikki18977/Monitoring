#!/bin/bash

j=9                           
METRIC_PATH="/tmp/result/metrics"
  
while true
do 
  cat /dev/null > $METRIC_PATH
  i=0

  while  [ $i -le $j ]
  do
    metric=$((RANDOM % 100))
    echo "metric$i     $metric" >> $METRIC_PATH
    ((i++))
  done

  sleep 5
done
