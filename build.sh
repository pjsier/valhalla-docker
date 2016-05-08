#!/bin/bash

if [ ! -d "$DIRECTORY" ]; then

  git clone \
    --depth=1 \
    --recurse-submodules \
    --single-branch \
    --branch=master https://github.com/valhalla/conf.git
fi

docker build \
  --tag movalia/valhalla \
  --force-rm \
  .
