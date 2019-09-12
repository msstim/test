#!/bin/bash

set -xv

if [[ $1 == "" ]]; then
    echo "No elasticsearch domain endpoint passed to script"
    exit 1
fi

elasticdump --input=./elasticsearch.json --output=$1