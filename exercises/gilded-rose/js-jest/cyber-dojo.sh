#! /bin/bash

set -e

NODE_VERSION=14.1.0

cd ~/node_modules/.bin
export NODE_PATH=/home/sandbox/node_modules

n use ${NODE_VERSION} ./node_modules/.bin/jest --ci --coverage