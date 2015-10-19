#!/usr/bin/env bash

set -ex

if [[ "$(./test.js)" != $PWD ]]; then
  echo "didn't work" && exit 1
fi
