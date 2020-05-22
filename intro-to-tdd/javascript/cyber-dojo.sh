#! /bin/bash

set -e

NODE_VERSION=14.1.0

n use ${NODE_VERSION}

npm-install-offline install --repo /usr/local/lib/node_modules
npm test