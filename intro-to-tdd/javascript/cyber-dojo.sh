#! /bin/bash

set -e

NODE_VERSION=14.1.0

n use ${NODE_VERSION} /usr/local/lib/node_modules/jest/bin/jest --ci