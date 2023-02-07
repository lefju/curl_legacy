#!/bin/bash

TARGET_URL=$1

if [ $# -ne 1 ]
then
  echo "Error: This script only accepts a single argument"
  exit 1  
fi

if [[ ! $(docker --version) ]]
then
  echo "Error: This script requires docker"
  exit 1
fi

docker run -it --rm --name curl_legacy lefju418/curl_legacy $TARGET_URL
