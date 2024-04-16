#!/bin/bash
set -xe

cd python/ray/dashboard/client
npm install
npm ci
npm run build
# not sure why this seems to get copied on windows but not linux...
mkdir -p $SP_DIR/ray/dashboard/client             # [not win]
cp -R ./build $SP_DIR/ray/dashboard/client/build  # [not win]

