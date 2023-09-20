#!/bin/bash

METRIC_PATH="/tmp/result/metrics"

grep  "$1" $METRIC_PATH |  awk '{print $2}' 


