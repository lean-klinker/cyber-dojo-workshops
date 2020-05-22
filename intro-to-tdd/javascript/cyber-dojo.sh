#! /bin/bash

set -e

NODE_VERSION=14.1.0

n use ${NODE_VERSION}

npm-install-offline install jest @babel/core @babel/preset-env \
    --repo /usr/local/lib/node_modules \
    --local-only

npm test