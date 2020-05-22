#! /bin/bash

set -e

NODE_VERSION=14.1.0

cp -a /usr/local/lib/node_modules/. ./node_modules/

n use ${NODE_VERSION} \
    /usr/local/lib/node_modules/jest/bin/jest --ci