#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/60366feaf6ad2f0015a5b95f

# build site
jekyll build

echo "stackbit-build.sh: finished build"
