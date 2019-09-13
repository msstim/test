#!/bin/bash

set -xv

ENDPOINT=$(aws es describe-elasticsearch-domains --domain-names test-ml-6-2 | grep -i endpoint | awk -F'",' '{ print $1 }' | awk -F': "' '{ print $2 }')

#elasticdump --input=./elasticsearch.json --output="$ENDPOINT"
elasticdump --help
echo "$ENDPOINT"