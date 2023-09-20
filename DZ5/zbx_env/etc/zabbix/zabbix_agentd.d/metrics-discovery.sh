#!/bin/bash

METRIC_PATH="/tmp/result/metrics"
metric_name="$(awk '{print $1}' $METRIC_PATH)"

printf %s '['
while read -r line
do
  printf %s  "$comma{\"{#METRICNAME}\":\"$line\"}"
  comma=","
done <<< "$metric_name"
printf %s ']'

